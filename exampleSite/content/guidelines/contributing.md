---
title: "Contribute"
date: 2022-07-28T22:08:53+02:00
weight: 90 # probably come last
---

Whether you'd like to add a feature, or you have spotted a spelling mistake,
anyone is welcome to [submit a PR](https://github.com/swiing/hugo-theme-primer)!

## How to add a component/utility/marketing item?

One of the primer item is not available yet in this theme?
You can create it! Here is how...

It is most likely you want the item to be available to content files,
and to templates. So, make sure to include both a shortcode and a partial
to your PR. For instance, for a new component:

- layouts/shortcode/<component_name>.md
- layouts/partials/component/<component_name>.html

Also, please update the documentation in `./exampleSite/content/<component_name>.md`
(if the file already exists, don't forget to remove `layout: wip`
from the front matter!)

The name of the file under the `content` directory must match exactly
the name of the path in <https://primer.style/css>. However,
the name of the file under `partials/` and `shortcode/` must be singular
(e.g. `buttons.md` and `button.[md|html]` respectively).
