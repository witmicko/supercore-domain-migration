mongoexport --db "fh-supercore" --collection "domainenvironments" --query '{domain : "testing"}' --out dump/domainenvironments.json &&
mongoexport --db "fh-supercore" --collection "domainmbaas" --query '{domain : "testing"}' --out dump/domainmbaas.json &&
mongoexport --db "fh-supercore" --collection "pushapplications" --query '{ domain: { $regex: "(testing)\\."}}' --out dump/pushapplications.json &&
zip -r dump.zip dump
