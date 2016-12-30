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
