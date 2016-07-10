mfbs (motherfuckingbootstap) is a CSS microframework inspired by [twitter
bootstrap](https://getbootstrap.com/) and
<http://bettermotherfuckingwebsite.com/>.

It is written in [Sass](http://sass-lang.com/) and consists of variable
definitions (`variables.scss`), some basic styling (`base.scss`) and some
optional components.

See how it looks
[here](https://xi.github.io/mfbs/examples/motherfuckingwebsite.html) and
[here](https://xi.github.io/mfbs/examples/styleguide.html).

# how to use it

First, install via bower or npm (eyeglass):

    bower install xi/mfbs
    npm install mfbs

Then, create a master stylesheet like this:

    // First, import default variables and adjust with your own
    @import "mfbs/variables";
    @import "variables";

    // Import basic styling
    @import "mfbs/base";

    // Optionally import some components
    @import "mfbs/form";

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
    workflow for writing CSS
    -   based on [OOCSS](http://oocss.org/) and [Sass](http://sass-lang.com/)
    -   naming conventions
    -   use variables for all colors
    -   prefer relative units
    -   accessibility

# A brief introduction to web design (slightly opinionated)

## WYSIWYM (What you see is what you mean)

Web design is fundamentally different from many other forms of design,
especially print, because you can not see the final product. Of course, you can
look at a webpage in your browser, but you will never be able to see or even
imagine that page on all possible devices, with all possible browsers and
browser extensions, let alone user generated content. That is why instead of
coding what you want to see, you should write what you mean.

Example: You want to center some text on the screen, so increase the
`margin-left` to something like 1100px and it looks fine, right?  Maybe on your
screen, but definitely not on a mobile device. Instead, you should use
`text-align: center`. With this information, the browsers can understand what
you want and do their best to produce a usable result.

## Maintenance

A website is typically never finished. Make sure that you will still be able to
understand your code one year from now!

Example: Styling elements based on context (using descendant selectors) may
seem like a good idea, but it soon gets extremely complicated to understand
which rules apply to which element with which priority.

## Progressive enhancement

Not all clients provide the same features. Think about small screens, outdated
browsers, blocked JavaScript, or assistive technology. You should never rely on
these advanced features. Instead, use them to optionally enhance user
experience if additional features are available.

Example: Build your website for small screens by default. If more screenspace
is available (check via [media
queries](https://developer.mozilla.org/en-US/docs/Web/CSS/Media_Queries/Using_media_queries))
you can switch to an optimized layout (this approach is called "mobile first").

## Separate style, functionality, and content

The web is build with three distinct languages: HTML for content, JavaScript
for functionality and CSS for styling. Make sure that you have a clear
separation between these areas!

Example: Do not use element selectors in CSS. They break easily when you change
your HTML. Instead, use semantic class names.

## Conventions

People spend much more time on other peoples websites, so do not try to get
fancy. Just do what everyone is doing, that's just fine.

Example: Links are much more likely to be fund if they are blue and underlined.

## Use appropriate units

For some reason, people seem to be afraid of using different units in their
stylesheets. There seems to be a `px` camp, a `em` camp and since recently also
a `rem` camp. But the truth is: Each of these units is different and has their
specific use. Learn the meaning of each of them and when to use it!

## Objects, states, and modifiers

You can not possibly think about the complete interface at once. Instead,
divide it into meaningful parts. Here is how I do it:

Object
:   An object is a part of the UI that could stand on its own or be repeated in
    different places. It can be anything from a link to a login form or a
    layout structure. Objects are references by their classname, which should
    be dashed-lowercase (e.g. `.login-form`).

    Note: Splitting your UI into objects is not as easy as you might think.
    Take special care to get this right! For example, you might want to split
    layout and styling into separate objects.

Modifier
:   Sometimes you might want to have a slightly modified variant of an existing
    object. In that case, create a modifier class that is prefixed with `m-`
    (e.g. `.button.m-call-to-action`).

State
:   If the state of an object can be changed on runtime, use a state class that
    is prefixed `is-` or `has-`. Alternatively, utilize the existing pseudo
    classes (e.g. `a.is-active`, `a:disabled`).

## Use variables

If you use the same values in several places, make that explicit by defining it
as a variable with a semantic name. Colors are an obvious example, but this
also makes sense for some length values.

## Living styleguide

To keep an overview of everything you have done, you should create a page with
examples and descriptions for all your objects, modifiers, states and
variables.
