---
title: "Contribute"
date: 2022-07-28T22:08:53+02:00
---

## How to add a component/utility/marketing item?

Feel free to submit a PR for new items. Make sure to include both a partial and a shortcode. For instance, for a new component:

- `./partials/component/<mycomponent>.html`
- `./shortcode/<mycomponent>.md`

Also, please update the documentation in `./exampleSite/content/<mycomponent>.md` (don't forget to remove `layout: wip` from the front matter)

The name of the file under the `content` directory must match exactly the name of the path in <https://primer.style/css>. However, the name of the file under `./partials` and `./shortcode` must be singular (e.g. `buttons.md` and `button.[md|html]` respectively).
