package Parser;
use v5.14; use warnings; use autodie; use utf8;
use open qw[ :encoding(UTF-8) :std ];

use parent 'Exporter';
our @EXPORT = qw[
  filepath_to_html
  html_to_summary
];

sub parse_line(_) {
  return $_[0]
    =~ s|&|&amp;|grx
    =~ s|<|\x02|grx
    =~ s|>|\x03|grx
    =~ s|\*\*(.*?)\*\*|<strong>$1</strong>|grx
    =~ s|\x02\x02 ([^:>]+) :: ([^:>]+) \x03\x03|<a href="#$2">$1</a>|grx
    =~ s|\x02\x02          :: (.*?)    \x03\x03|<a dir="ltr" href="#$1">$1</a>|grx
    =~ s,\x02\x02 ([^|\x03]*) [|]{2} ([^|\x03]*) \x03\x03,<a class="out" href="$2">$1</a>,grx
    =~ s|\x02\x02 (.*?) \x03\x03|<a dir="ltr" class="out" href="$1">$1</a>|grx
    =~ s|\{\{(.*?)\}\}|<span dir="ltr">$1</span>|grx
    =~ s|\x02|&lt;|grx
    =~ s|\x03|&gt;|grx
    =~ s|&amp;(?=[^"]*">)|&|grx  # un-encode '&' in hrefs
    =~ s|$|<br>|r  # no /g or it'd be triggered twice
    =~ s|\h+| |gr  # collapse all horizontal spaces into one normal ASCII space; also replaces \t (for ysmu.tsv)
}

sub transform_see_also(_) {
  return
    sprintf qq[<p class="seealso">انظر أيضا:</p><ul>\n%s\n</ul>],
      join "\n",
        map { qq[<li><a dir="ltr" href="#$_">$_</a></li>] }
          split "\n", $_[0]
}

sub transform_blockquote(_) {
  return
    sprintf qq[<blockquote>\n%s\n</blockquote>],
      $_[0]
}

sub transform_para(_) {
  return
    ('<p>'.( $_[0] =~ s|<br>\n<br>\n|</p>\n\n<p>|gr).'</p>')
      =~ s|<p></p>||gr
      =~ s|\A\n+||gr
      =~ s|\n+\Z||gr
      =~ s|\n\n+|\n\n|gr
      =~ s|^<p>::::<br>\n(.*?)</p>|transform_see_also($1)|mgrse
      =~ s|^<p>(?:&gt;){4}<br>\n(.*?)</p>|transform_blockquote($1)|mgrse
}

sub filepath_to_html(_) {
  my $ret = '';
  open my $f, '<', $_[0];
  while (<$f>) {
    $ret .= parse_line;
  }
  return transform_para $ret;
}

sub html_to_summary(_) {
  # get only the first paragraph, and collapse it into a single line
  return $_[0]
    =~ s|<p>(.*?)</p>.*|$1|sr  # /s makes . match any char, including \n
    =~ s|[.]<br>\n|. |grx
    =~ s|   <br>\n|. |grx
}

1;
