#!/bin/bash

# Get id of touchpad and the id of the field corresponding to
# tapping to click
id=`xinput list | grep "Touchpad" | cut -d'=' -f2 | cut -d'[' -f1 | head -n 1`
tap_to_click_id=`xinput list-props $id | \
                      grep "Tapping Enabled (" \
                      | cut -d'(' -f2 | cut -d')' -f1 | head -n 1`

# Set the property to true
xinput --set-prop $id $tap_to_click_id 1
xinput --set-prop 18 334 0.2

