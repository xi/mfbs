mfbs (motherfuckingbootstap) is CSS microframework inspired by [twitter
bootstrap](https://getbootstrap.com/) and
<http://bettermotherfuckingwebsite.com/>.

It is written in [Sass](http://sass-lang.com/) and consists of variable
definitions (`variables.scss`), some basic styling (`base.scss`) and some
optional components.

# how to use it

First, install via bower:

    bower install xi/mfbs

Then, create a master stylesheet like this:

    // First, define your own variables
    @import "variables";

    // Import basic styling
    @import "bower_components/mfbs/src/base";

    // Optionally import some components
    @import "bower_components/mfbs/src/form";

    // Import your own components
    @import "components/header";
    @import "components/navigation";
    @import "components/article";

# the fuck?

I tend to duplicate a lot of basic styling between projects. So naturally I was
looking for ways to reduce that duplication. Twitter bootstrap is nice, but it
does so much more than what I needed. So instead I rolled my own.

Here's the philosophy:

-   A site using no styling except for mfbs should have decent usability.
-   mfbs should be as minimal as possible
    -   no workarounds for browser bugs
    -   opinionated styling should go into optional components
    -   leverage default styles
-   apart from providing basic styling, mfbs should define and promote a
    workflow for writing CSS (TODO)
    -   based on [OOCSS](http://oocss.org/) and [Sass](http://sass-lang.com/)
    -   naming conventions
    -   use variables for all colors
    -   prefer relative units
    -   accessibility
