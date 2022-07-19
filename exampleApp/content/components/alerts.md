---
title: "Alert"
date: 2022-07-18T10:27:23+02:00
---

Flash messages, or alerts, inform users of successful or pending actions.

## warn, error, success

Alerts come in different flavours: `warn`, `error`, `success` and a default if none is specified.

### Partial

{{<example>}}
{{<partial "component/alert.html" "Some alert message" >}}
{{<partial "component/alert.html" "Some alert message" "warn" >}}
{{<partial "component/alert.html" "Some alert message" "error" >}}
{{<partial "component/alert.html" "Some alert message" "success" >}}
{{</example>}}

### Shortcode

{{<example>}}
{{<alert>}}Some alert message.{{</alert>}}
{{<alert warn>}}Some alert message (warn).{{</alert>}}
{{<alert error>}}Some alert message (error).{{</alert>}}
{{<alert success>}}Some alert message (success).{{</alert>}}
{{</example>}}

## full

Add `full` to make the message full width and remove border and border radius.

{{<example>}}
{{<alert full>}}Some alert message (full).{{</alert>}}
{{</example>}}

## banner

Add `banner` to make the message fixed positioned at the top of the page.

{{<example>}}
<div style="min-height: 64px;">
{{<alert banner>}}Some alert message (banner).{{</alert>}}
</div>
{{</example>}}

## multiple attributes

### Partial

{{<example>}}
{{<partial "component/alert.html" "Some alert message" warn full banner >}}
{{</example>}}

### Shortcode

{{<example>}}
<div style="min-height: 64px;">
{{<alert warn full banner>}}Some alert message (warn, full, banner).{{</alert>}}
</div>
{{</example>}}