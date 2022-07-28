---
title: "Button"
date: "2022-07-14"
---

{{\<button [\<type\> [\<state\>]] \>}}\<text\>{{\</button\>}}

A button is a component that can take an optional `type`, and an optional `state`.

## types

### Examples

{{<example>}}
  {{<button >}}default{{</button>}}
  {{<button primary>}}primary{{</button>}}
  {{<button outline>}}outline{{</button>}}
  {{<button danger>}}danger{{</button>}}
  {{<button invisible>}}invisible{{</button>}}
{{</example>}}

## states

### Examples

{{<example>}}
  {{<button default disabled>}}disabled{{</button>}}
  {{<button default selected>}}selected{{</button>}}
{{</example>}}