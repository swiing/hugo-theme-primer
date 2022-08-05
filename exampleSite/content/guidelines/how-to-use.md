---
title: "How to Use"
date: 2022-08-03T13:46:32+02:00
draft: # true
weight: 2
---

## Pre-requisite

This guide assumes prior knowledge of hugo. You may want to check first the [hugo documentation](https://gohugo.io/documentation/).

## Philosophy

The `hugo-theme-primer` is not quite a full fledge theme. This is on purpose:
although it comes with some sort of default layouts,
the intention is to leave it to you to design the layouts that best match your needs.

Instead, the theme provides **utilities** and **components**
that you can mix and match to build your site according to your needs.

## How does it work?

The theme provides helpers in the form of:

- [partials](https://gohugo.io/templates/partials/): for inclusion in your hugo [templates](https://gohugo.io/templates/)
- [shortcodes](https://gohugo.io/content-management/shortcodes/): for inclusion in your hugo [content](https://gohugo.io/content-management/organization/) files

## What if the primer item I need is not implemented yet?

This is work in progress, and you mind find a primer item 
that is not available yet in the theme.
Good news: you can still use it! Here is how, depending on your need.

> :rocket: Of course, you can [contribute](../contributing) to implement the missing feature. That would be terrific!

### In templates

Templates can take any html; so you can directly include primer classes in your code, as needed.

### In content files

The default markdown processor for hugo is Goldmark. It allows including (primer) classes in two ways.

In some cases, you can include classes directly inside markdown, as follows:

{{<example>}}
# My title { .Box }
{{</example>}}

At the time of writing, this is possible for headings only. You can check the [Goldmark documentation](https://github.com/yuin/goldmark/#attributes).

Also, Goldmark lets you inline html directly in your markdown content files.
You need to set the [unsafe option](https://gohugo.io/getting-started/configuration-markup/#goldmark) in the hugo configuration, though.
With this, you can do the following:

{{<example>}}
<h1 class="Box">My Title</h1>

And by the way, yes, source is a markdown file, even though it includes html tags!
{{</example>}}

## Primer css version

The theme ships with version {{<version>}} by default. Should you wish to use another version, create a file `layouts/partials/primer/version.html` with the desired version, e.g.

```html
20.0.1
```

This will override the default.
