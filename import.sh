unzip supercore_dump &&
mongorestore --db fh-supercore supercore_dump/fh-supercore &&
mongo fh-supercore --eval 'db.getCollection("domainenvironments").update({"domain":"testing"},{$set:{"domain":"new_domain"}}, {multi: true})'
mongo fh-supercore --eval 'db.getCollection("domainmbaas").update({"domain":"testing"},{$set:{"domain":"new_domain"}}, {multi: true})'
