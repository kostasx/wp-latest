#!/bin/bash

## GET LATEST WORDPRESS RELEASE
curl_wp=$(curl -s http://core.svn.wordpress.org/tags/ | grep -v "\.\." | grep "<li>" | grep -o -E 'href="([^#]+)"' | cut -d'"' -f2 | cut -d'/' -f1);
array=($curl_wp);
array_length=${#array[@]};
## last_element=`echo ${array_length} -1 | bc`;
last_element=$[$array_length - 1];
WP_LATEST_VERSION="${array[$last_element]}";
echo $WP_LATEST_VERSION;