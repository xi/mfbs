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
[here](https://xi.github.io/mfbs/examples/styleguide.html).

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
