mfbs (motherfuckingbootstap) is a CSS microframework inspired by [twitter
bootstrap](https://getbootstrap.com/) and
<http://bettermotherfuckingwebsite.com/>.

I found that I started every new project with mostly the same CSS code. So
instead of duplicating that code again and again, I distilled the base styles
from several projects into this little library.

It consists of some basic styling (`base.css`) and some optional components.

See how it looks
[here](https://xi.github.io/mfbs/examples/motherfuckingwebsite.html) and
[here](https://xi.github.io/mfbs/examples/styleguide.html).

## how to use it

The code is plain CSS, so you can use it any way you want:

-   Reference the file you want using `<link rel="stylesheet" href="…"/>`
-   Concatenate the files and you own code into a single big file.
-   Or just read the code and copy the parts you like.

## features

-   mfbs on its own is completely sufficient for simple text-only websites.
-   It can easily be customized with variables.
-   The default colors were carefully picked to look nice and satisfy minimum
    contrast requirements.
-   Opinionated styling for buttons, layout, and some more things is available
    in additional modules.
-   Base styles have low specificity, so they can easily be extended with
    custom components.
-   The small set of variables is very focused and scales well for projects of
    any size.

## when to use

-   Use the default for simple general-purpose styling
-   For small projects, overwrite some variables and define some custom
    components (e.g. header)
-   For large projects, you probably do not want to include the optional,
    opinionated modules. But the base styles and variables are still a solid
    base to build on.
