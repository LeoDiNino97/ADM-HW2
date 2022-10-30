#!/bin/bash

top_10="awk 'length($8) > 100' instagram_posts.csv | head | awk '{print $2}'"
y=eval "${top_10}"

for i in $(y)
do
   result="awk '$1 == "$i"' instagram_profiles.csv"
   eval "${result}"
   echo "Done!"
done