mfbs (motherfuckingbootstap) is a CSS microframework inspired by [twitter
bootstrap](https://getbootstrap.com/) and
<http://bettermotherfuckingwebsite.com/>.

I found that started every new project with mostly the same CSS code. So
instead of duplicating that code again and again, I distilled the base styles
from several projects into this little library.

It is written in [Sass](http://sass-lang.com/) and consists of variable
definitions (`variables.scss`), some basic styling (`base.scss`) and some
optional components.

See how it looks
[here](https://xi.github.io/mfbs/examples/motherfuckingwebsite.html) and
[here](https://xi.github.io/mfbs/examples/styleguide.html). You can also use
this <a href="javascript:(function() {var $ = function(selector) {var elements = document.querySelectorAll(selector);return {append: function(e) {elements[0].appendChild(e);},forEach: function(fn) {Array.prototype.forEach.call(elements, fn);}};};$(&#x27;[style]&#x27;).forEach(function(e) {e.removeAttribute(&#x27;style&#x27;);});$(&#x27;style&#x27;).forEach(function(e) {e.remove();});$(&#x27;link[rel=&quot;stylesheet&quot;]&#x27;).forEach(function(e) {e.remove();});[&#x27;bgcolor&#x27;, &#x27;color&#x27;, &#x27;width&#x27;, &#x27;height&#x27;, &#x27;face&#x27;, &#x27;size&#x27;].forEach(function(attr) {$(&#x27;[&#x27; + attr + &#x27;]&#x27;).forEach(function(e) {e.removeAttribute(attr);});});var style = document.createElement(&#x27;style&#x27;);style.innerHTML = &#x27;@viewport { width: device-width; }*,*::before,*::after { box-sizing: inherit; }img { max-width: 100%; }p, address, blockquote, pre, table, dl, ul, ol, figure, fieldset { margin-top: 0; margin-bottom: 1em; }html { overflow-y: scroll; background-color: #fff; box-sizing: border-box; color: #333; font-size: 1.2em; font-family: sans-serif; line-height: 1.5; }h1, h2, h3, h4, h5, h6 { line-height: 1.2; margin-bottom: 0.8rem; margin-top: 1.5em; }a { color: #26c; text-decoration: underline; } a:hover, a:focus, a:active { color: #2b4d80; }a:not([href]) { color: inherit; text-decoration: inherit; } a:not([href]):hover, a:not([href]):focus, a:not([href]):active { color: inherit; }*::selection { background: #26c; color: #fff; }hr { border: 0; border-bottom: 1px solid #adadad; margin: 1em 0; }pre, code { font-size: 90%; font-family: monospace; background-color: whitesmoke; }code { padding: 0 0.25em; }pre { padding: 0.5em; overflow: auto; border: 1px solid #adadad; } pre code { background: none; font-size: 100%; padding: 0; }ol, ul { padding-left: 1.5rem; }dt { font-weight: bold; }dd { margin-left: 1.5rem; }blockquote { font-style: italic; margin-left: 1.5rem; margin-right: 0; }table { border-collapse: collapse; border-spacing: 0; }tr { border-bottom: 1px solid #adadad; }td, th { text-align: start; padding: 0.25em; vertical-align: top; }textarea { resize: vertical; }fieldset { border: 1px solid #adadad; }sub, sup { line-height: 0; }@media print { html { background: transparent; color: #000; } h2, h3 { page-break-after: avoid; } }body { margin: 2em auto; max-width: 38em; padding: 0 0.5em; }html { font-size: 2.5vw; } @media (min-width: 48em) { html { font-size: 1.2em; } } @media (max-width: 36em) { html { font-size: 0.9em; } }label { display: block; }input,textarea,select, .button,button,[type=button],[type=submit] { margin: 0 0 1em; border: 1px solid #adadad; border-radius: 0.2em; padding: 0.3em 0.75em; font-family: inherit; font-size: inherit; }input,textarea,select { background: #fff; color: #333; } input:invalid, textarea:invalid, select:invalid { border-color: red; color: red; } input:disabled, textarea:disabled, select:disabled { border-color: #adadad; background: whitesmoke; color: #adadad; cursor: not-allowed; }.button,button,[type=button],[type=submit] { text-decoration: none; display: inline-block; cursor: pointer; line-height: 1.8; text-align: center; border-color: #26c; background: #26c; color: #fff; } .button:hover, .button:focus, button:hover, button:focus, [type=button]:hover, [type=button]:focus, [type=submit]:hover, [type=submit]:focus { border-color: #275aa6; background: #275aa6; color: #fff; } .button:active, button:active, [type=button]:active, [type=submit]:active { border-color: #2b4d80; background: #2b4d80; color: #fff; } .button:disabled, button:disabled, [type=button]:disabled, [type=submit]:disabled { border-color: #91b3e6; background: #91b3e6; color: #e9f0fa; cursor: not-allowed; }html { font-weight: 300; }h1, h2, h3, h4, h5, h6 { font-weight: normal; font-family: serif; }&#x27;;$(&#x27;head&#x27;).append(style);})();">bookmarklet</a>.

# how to use it

    // First, define your own variables
    @import "variables";

    // Import basic styling and default variables
    @import "mfbs/variables";
    @import "mfbs/base";

    // Optionally import some opinionated styling
    @import "mfbs/form";

    // Import your own components
    @import "components/header";
    @import "components/navigation";
    @import "components/article";

# features

-   mfbs on its own is completely sufficient for simple text-only websites.
-   It can easily be customized with variables.
-   The default colors were carefully picked to look nice and satisfy minimum
    contrast requirements.
-   Opinionated styling for buttons, layout, and some more things is available
    in optional modules.
-   Base styles have low specificity, so they can easily be extended with
    custom components.
-   The small set of variables is very focused and scales well for projects of
    any size.

# when to use

-   Use the default for simple general-purpose styling
-   For small projects, overwrite some variables and define some custom
    components (e.g. header)
-   For large projects, you probably do not want to include the optional,
    opinionated modules. But the base styles and variables are still a solid
    base to build on.
