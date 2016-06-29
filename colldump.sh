mongodump --db "fh-supercore" --collection "domainenvironments" --query '{domain : "testing"}' &&
mongodump --db "fh-supercore" --collection "domainmbaas" --query '{domain : "testing"}' &&
mongodump --db "fh-supercore" --collection "pushapplications" --query '{ domain: { $regex: "(testing)\\."}}' &&
mongodump --db "fh-supercore" --collection "deployhistories" --query '{ deployTarget: "OPENSHIFT3"}'
zip -r dump.zip dump
