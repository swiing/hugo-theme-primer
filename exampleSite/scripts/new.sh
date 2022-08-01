#!/usr/bin/env bash

# This is a utility script that will run hugo new ... for missing pages.
# In principle, it should be run only once (unless primer adds new items).

# To ne noted: maybe some pages do not realy make sense in a hugo theme.
# I have not checked each of them individually and may want to remove
# some in the future, should I find them irrelevent.

# https://betterdev.blog/minimal-safe-bash-script-template/
content_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")/../content" &>/dev/null && pwd -P)
themes_dir="$content_dir/../../.."

# create page for primer utilities, if does not exist yet.
for item in animations borders boxshadow colors details flewbox grid layout margin padding typography
do
  if [ ! -f "$content_dir/utilities/$item.md" ]; then
    hugo new "$content_dir/utilities/$item.md" --themesDir "$themes_dir"
  fi
done

# create page for primer components, if does not exist yet.
for item in alerts avatars blankslate boxoverlay box branchname breadcrumbs buttons dropdown forms header labels layout links loaders markdown navigation pagination popover progress selectmenu subhead timeline toasts tooltips truncate
do
  if [ ! -f "$content_dir/components/$item.md" ]; then
    hugo new "$content_dir/components/$item.md" --themesDir "$themes_dir"
  fi
done

# create page for primer marketing, if does not exist yet.
for item in buttons filters layout links typography
do
  if [ ! -f "$content_dir/marketing/$item.md" ]; then
    hugo new "$content_dir/marketing/$item.md" --themesDir "$themes_dir"
  fi
done
