mongodump --db "fh-supercore" --collection "domainenvironments" --query '{domain : "testing"}' &&
mongodump --db "fh-supercore" --collection "domainmbaas" --query '{domain : "testing"}' &&
mongodump --db "fh-supercore" --collection "pushapplications" --query '{domain : "testing"}' &&
zip -r dump.zip dump
