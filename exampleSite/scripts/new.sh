#!/usr/bin/env bash

# This is a utility script that will run hugo new ... for missing pages.
# In principle, it should be run only once (unless the design system adds new items).

# To ne noted: maybe some pages do not really make sense in a hugo theme.
# I have not checked each of them individually and may want to remove
# some in the future, should I find them irrelevent.

# https://betterdev.blog/minimal-safe-bash-script-template/
content_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")/../content" &>/dev/null && pwd -P)
themes_dir="$content_dir/../../.."

create () {
  prefix=$1
  items=$2

  # append prefix - https://stackoverflow.com/a/13216833
  for item in "${items[@]/#/$prefix\/}"

  do
    file="$content_dir/$item.md"
    # if the file already exists but has a wip layout
    # delete (and recreate) to take into account any update of layout/wip.html.
    if grep -q "layout: wip" "$file"; then
      rm "$file"
    fi
    if [ ! -f "$file" ]; then
      hugo new "$file" --themesDir "$themes_dir"
    fi
  done
}

# create page for each primer component/marketing/utility, if does not exist yet.
items=(alerts avatars blankslate boxoverlay box branchname breadcrumbs buttons dropdown forms header labels layout links loaders markdown navigation pagination popover progress selectmenu subhead timeline toasts tooltips truncate)
create components $items
items=(buttons filters layout links typography)
create marketing $items
items=(animations borders boxshadow colors details flewbox grid layout margin padding typography)
create utilities $items
