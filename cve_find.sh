#!/bin/bash

curl -sk "https://www.cvedetails.com/vulnerability-list/vendor_id-15824/Pulsesecure.html" | grep  "title=\"C" | awk '{print $3}' | grep -v "title" | sed 's/href="\/cve\///' | cut -f1 -d"/" | sort -u
