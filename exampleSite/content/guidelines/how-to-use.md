---
title: "How to Use"
date: 2022-08-03T13:46:32+02:00
draft: # true
weight: 2
---



## Pre-requisite

This guide assumes prior knowledge of hugo. You may want to check the [hugo documentation](https://gohugo.io/documentation/).

## How does it work?

The theme provides helpers in the form of:

- [partials](https://gohugo.io/templates/partials/): for inclusion in your [templates](https://gohugo.io/templates/)
- [shortcodes](https://gohugo.io/content-management/shortcodes/): for inclusion in your [content](https://gohugo.io/content-management/organization/) files

## What if the primer item I need is not implemented yet?

Good news: you can still use it! Here is how, depending on your need.

> Of course, you can still [contribute](../contributing) to implement the missing feature.

### In templates

Templates can take any html; so you can directly include primer classes in your code, as needed.

### In content files

Since hugo v0.60, the default markdown processor is Goldmark. It allows the following:

In some cases, you can include primer classes directly inside markdown, as follows:


{{<example>}}
<!-- content/somecontent.md -->

# My title { .Box }
{{</example>}}

At the time of writing, this is possible for headings only. You can check the [Goldmark documentation](https://github.com/yuin/goldmark/#attributes).

Also, Goldmark lets you inline html directly in your markdown content files. This is achieved by setting the [unsafe option](https://gohugo.io/getting-started/configuration-markup/#goldmark). With this, you can do the following:

{{<example>}}
<!-- content/somecontent.md -->

<h1 class="Box">My Title</h1>

And by the way, yes, source is a markdown file, even though it includes html tags!
{{</example>}}
