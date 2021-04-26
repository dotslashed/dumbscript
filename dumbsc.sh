#!/bin/bash
keywords="$(<./keywords.txt)"
while IFS= read -r url; do
    curl -L -s "$url" | grep -ioF "$keywords" |
        while IFS= read -r keyword; do
            echo "$url: $keyword"
        done
done < ./url_list.txt
