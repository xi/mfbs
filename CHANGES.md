5.1.0 (2022-05-06)
------------------

-   use same colors for `:link` and `:visited` by default
-   fix deprecation warning about devision syntax


5.0.0 (2021-07-15)
------------------

-   link styling now uses `:link` instead of `a` (higher specificity!)
-   rm support for bower
-   rm support for eyeglass
-   rm styling for selection
-   rm styling for fieldset
-   rm styling for invalid form field (again)
-   rm viewport at-rule
-   add `visited` styling and `$color-link-visited`
-   use `:focus-visible` instead of `:focus` (with compatbility for legacy
    browsers)
-   add hidden styling
-   restrict max-width for video
-   darker default `$border-color`
-   avoid page break in print after any heading, not just `h2` and `h3`


4.0.0 (2018-01-11)
------------------

-   do not inherit box-sizing
-   Allow vertical resizing on multi-selects
-   form: rm border radius
-   form: rm margin from inputs
-   reduce line width
-   do not add margin above first heading
-   Highlight focused inputs in firefox
-   Re-introduce invalid styling for firefox


3.1.1 (2017-07-12)
------------------

-   limit the files that go into npm package


3.1.0 (2017-07-12)
------------------

-   change default link color (to unify across projects)
-   only limit max-width on img
-   remove top border from tables (reduces specificity)
-   tweak line width and leading (inspired by sakura)
-   add width variable
-   rm `:invalid` styling (maybe use `:user-error` instead in the future)


3.0.0 (2016-12-30)
------------------

-   move layout styles to separate module
-   change default link color


2.2.1 (2016-11-12)
------------------

-   refine table styles
-   reduce default indentation (better for small screens)


2.2.0 (2016-09-11)
------------------

-   use solid button design instead of "ghost"
-   derive some default colors from others


2.1.0 (2016-07-15)
------------------

-   remove special styling of last child in `li` elements (reverts a change
    from 1.1.0) as it was very specific and hard to overwrite
-   do not style `a` elements as links if they do not have a `href` attribute
    (note that this is done with the `a:not([href])` selector which has a high
    specificity)
-   fix line-height with sup/sub


2.0.0 (2016-07-10)
------------------

-   eyeglass/npm support
-   move files to sass folder
-   use `!default` directive on default variables


1.1.0 (2016-06-25)
------------------

-   remove `a:visited` styling
-   explain some concepts in the README
-   make inline `<code>` integrate better (e.g. with links)
-   darker default `color-bg-tint`
-   add filedset to basic margin reset
-   more space on headings
-   consistent nested lists
-   fix inconsitent margin on `pre`
-   add variables for lengths


1.0.0 (2016-06-03)
------------------

-   switch to scss
-   split dynamic fontsize into separate module
-   add form/button module
-   remove non-essential paragraph styling
-   darken default border color
-   decrease `line-height`
-   fix print default color


0.2.0 (2016-03-18)
------------------

-   consitent indentation for `ul`, `ol`, `dl`, and `blockquote`
-   consistent `margin-top` on headings
-   define `font-size` on html to fix `rem`
-   more standard default colors
-   change `font-size` based on available space


0.1.0 (2016-02-06)
------------------

initial release
