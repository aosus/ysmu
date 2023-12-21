# معجم يسمو للمصطلحات التقنية الحديثة

<img align="left" width="80" height="80" alt="شارة معجم يسمو" src="etc/favicon.svg">

<ul>

<li>المصطلحات المتفق عليها مع شرح سبب اختيارها وأمثلة عليها:<br>
  https://noureddin.github.io/ysmu

<li>المصطلحات المتفق عليها بغير شرح (للتطبيقات والمعاجم المجمعة):<br>
  https://github.com/noureddin/ysmu/raw/main/ysmu.tsv

<li>المصطلحات المرشحة للاتفاق، التي ستصير «متفق عليها» بعد ساعات أو أيام غالبا:<br>
  https://noureddin.github.io/ysmu/candidate

<li>المصطلحات التجريبية التي لم يتفق المجتمع عليها بعد<br>
  https://noureddin.github.io/ysmu/experimental

<li>موارد وإرشادات وملاحظات عامة:<br>
  https://noureddin.github.io/ysmu/notes

<li>قائمة روابط جميع المصطلحات:<br>
  https://noureddin.github.io/ysmu/link

</ul>

## الرسالة

ليس همّ المعجم مجرد سرد للمصطلحات العربية الشائعة؛ بل مهمته أمران:

&emsp;١. اختيار أفضل لفظ عربي مناسب للمصطلحات الإنجليزية التقنية المختلفة.

&emsp;٢. شرح لماذا هذا الاختيار هو الأنسب حتى تقتنع به وتطمئن إليه وتستخدمه.

أما عن الأمر الأول، فدائما نحاول تخيّر لفظ استخدمه العرب الأقدمين بالمعنى المراد نفسه ويستخدمه المحدَثون أو يفهموه بغير شرح أو بأقل شرح ممكن.

أما عن الآخر، فهذا لأن الشيوع مقدّم على صحة المعنى ودقته عند الكثيرين، وقد يكون اللفظ الشائع خطأ أصلا. فلا سبيل إلى إصلاح أمثال هذا الخطأ إلا بالشرح، وليس بمجرد سرد المصطلحات.

## تواصل

عبر [مسائل GitHub](https://github.com/noureddin/ysmu/issues/)
أو غرفة الترجمة في مجتمع أسس على شبكة ماتركس: [‪#localization:aosus.org‬](https://matrix.to/#/#localization:aosus.org)

## الرخصة

ما لم يُذكر غير ذلك، فكل شيء (الكود والمحتوى) متاح ببنود رخصة [المشاع الإبداعي الصفرية (CC0)](https://creativecommons.org/choose/zero/) (مكافئة للملكية العامة).

وعلى أي مشروع مشتق أن يستخدم اسمًا غير «يسمو» ولا يكون «يسمو» جزءًا منه.

الشارة هي ملفا U+1F304 من [Twemoji](https://twemoji.twitter.com/) برخصة CC-BY 4.0،
مع حرف العين [بالخط الأميري](https://www.amirifont.org/).
واُستعمل [ضاغط نانو من Vecta](https://vecta.io/nano) لتصغير حجم ملفها.


## License

Unless mentioned otherwise, everything (code and content) is under the terms of [Creative Commons Zero (CC0)](https://creativecommons.org/choose/zero/) (equivalent to Public Domain).

And a derivative project must use a name that isn't "Ysmu" and doesn't include "Ysmu".

The logo is the two U+1F304 files from [Twemoji](https://twemoji.twitter.com/) under the terms of CC-BY 4.0,
with the letter Ayin from [the Amiri font](https://www.amirifont.org/).
And its file size is reduced with [Vecta's Nano compressor](https://vecta.io/nano).

## مراحل المصطلحات

- **المصطلحات المتفق عليها:** هي المصطلحات التي وافق عليها أعضاء غرفة الترجمة في مجتمع أسس بعد نقاش و/أو تصويت. ([صفحتها ⬉](https://noureddin.github.io/ysmu/))
- **المصطلحات المرشحة للاتفاق:** هي المصطلحات التي في مرحلة التصويت، أو في آخر مرحلة النقاش. ([صفحتها ⬉](https://noureddin.github.io/ysmu/candidate/))
- **المصطلحات التجريبية:** هي المصطلحات التي لم يتفق عليها المجتمع بعد، وقد يكون نقاشها في بدايته أو لم يبدأ بعد أصلا، أو رُشّحت للاتفاق ثم لم نتفق، فتحتاج بعض العمل. ([صفحتها ⬉](https://noureddin.github.io/ysmu/experimental/))
- **المصطلحات المؤجلة:** هي المصطلحات التي لن يبدأ النقاش فيها قريبا ونريد إبعادها قليلا للتركيز على المصطلحات الأخرى. ([صفحتها ⬉](https://noureddin.github.io/ysmu/unstaged/))

وكل مجموعة من هذه المصطلحات تظهر في صفحة خاصة بها، والمصطلحات المتفق عليها فقط هي التي تصل إلى [ملف المعجم المختصر](https://github.com/noureddin/ysmu/raw/main/ysmu.tsv).

## تنظيم المستودع

يُقسم هذا المستودع إلى أربعة أقسام منطقية:

### البيانات:

- مجلد `w`: فيه المصطلحات المتفق عليها.
- مجلد `c`: فيه المصطلحات المرشحة للاتفاق.
- مجلد `x`: فيه المصطلحات التجريبية.
- مجلد `u`: فيه المصطلحات المؤجلة.
- ملف `notes/src`: فيه إرشادات وموارد وملاحظات عامة قد تهم من يهتم بمثل هذا المشروع.
- ملف `longnames.tsv`: يحتوي كل سطر منه على خانتين مفصولتين بمسافة جدولة، الأولى فيها اختصارات المصطلحات المستخدمة في المعجم (انظر فصل «الاختصارات» أدناه)، والأخرى هي الاسم الطويل.

### المعالجة:

- مجلد `p`: فيه بُريمج التحويل والمكتبات المساعدة، وهو يحوّل ملفات البيانات إلى صفحات الويب والمعجم المختصر.
- ملف `Makefile`: ليُرشد برنامج `make` لإعداد الملفات عند أي تغيير في البيانات.

### النواتج:

- ملف `index.html`: صفحة ويب المصطلحات المتفق عليها. [اذهب إليها ⬉](https://noureddin.github.io/ysmu/)
- ملف `candidate/index.html`: صفحة ويب المصطلحات المرشحة للاتفاق. [اذهب إليها ⬉](https://noureddin.github.io/ysmu/candidate/)
- ملف `experimental/index.html`: صفحة ويب المصطلحات التجريبية. [اذهب إليها ⬉](https://noureddin.github.io/ysmu/experimental/)
- ملف `notes/index.html`:  ناتج تصيير `notes/src`، أي صفحة ويب الموارد والإرشادات. [اذهب إليها ⬉](https://noureddin.github.io/ysmu/notes/)
- ملف `ysmu.tsv`: المصطلحات المتفق عليها بالترجمة المختصرة بغير شرح وبصيغة مناسبة للتطبيقات. [اذهب إليه ⬉](https://github.com/noureddin/ysmu/raw/main/ysmu.tsv)
- ملف `link/index.html`: قائمة روابط جميع المصطلحات. [اذهب إليها ⬉](https://noureddin.github.io/ysmu/link/)
- ملفات `link/*/index.html`: صفحات توجيه إلى المصطلح بغض النظر عن مرحلته الحالية (`*` هي اسم المصطلح الإنجليزي).

### السواكن:

- ملفات <code dir="ltr">etc/favicon*</code>: ملفات شارة الموقع وأيقونة التفضيل.
- ملف `etc/style.css`: ضبط شكل صفحات الويب.
- ملف `MARK.md`: وصف إنساني للغة التنسيق المستعملة في هذا المشروع.
- ملف `LICENSE`: نص رخصة المشاع الإبداعي الصفرية باللغة الإنجليزية.
- ملف `README.md`: هذا المستند.

## صيغ الملفات

تحتوي مجلدات المصطلحات (مثل مجلد `w`) على ملف لكل مصطلح إنجليزي، بحروف صغيرة، وبشرطة سفلية (`_`) بدلا من المسافة إن وجدت.

يتكون ملف كل مصطلح من نص عادي، فقرته الأولى هي الترجمة المختصرة التي تعرضها المعاجم، وهي التى توضع في «ملف المعجم المختصر».

وتُتبع الفقرة الأولى بفقرات تشرح سبب اختيار هذا المصطلح أو توضح أمثلة على استخدام أو ما يناسب عموما.

وقد يُنهى ملف المصطلح بقائمة «انظر أيضا» للإشارة إلى مصطلحات (إنجليزية) أخرى في المعجم.

وتستخدم ملفات المصطلحات لغةً تنسيقية خفيفة مشروحة في ملف `MARK.md`.

ويستخدم ملف الإرشادات `notes/src` نسخة موسعة من نفس اللغة التنسيقية، وهي مشروحة في ملف `MARK.md` أيضا.

## الاختصارات

لا نستخدم الاختصارات، مثل اختصار repository إلى repo.

ولكن الاختصارات الشائعة للعبارات الطويلة مثل VPN اختصار virtual private network نستخدمها.

كيف «نستخدم» الاختصارات؟

- تُستخدم اسمًا للملف (في مجلدات المصطلحات مثل `w`) **بدلا من** الاسم الطويل.
- تُستخدم في الروابط الداخلية (داخل مرحلة المعجم الواحدة) والروابط الثابتة (روابط `/link/`) **إضافةً إلى** الاسم الطويل.
- تُذكر في العنوان وأسماء الروابط بعد الاسم الطويل.

