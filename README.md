# Supercore domain migration example

On a target machine run `trigger_migration.sh`

Tested on:
 - source: Vagrant VM
 - target: OSX, local mongodb

## Alternative approach
### Problem
At the moment script is using `mongodump` and we update ``domain`` field in `pushapplications` coll after `mongorestore` on the target machine. This causes an invalid data to be in the target machine for some time. Mongodump preserves data types.
```json
{
    "clientId" : "uycrnukfhwjelulrt2jn6a2u",
    "pushApplicationID" : "f8f3e4aa-a230-4541-8533-07aac2eb3e55",
    "domain" : "testing.eng1.skunkhenry.com",
    "_id" : ObjectId("576968b8e6914ee93f58fd91"),
    "__v" : 0
}
```
### Solution
Mongroexport exports data to json files and these can be modified in script with updated domain, before importing it into target db.

Mongoexport does not preserve data types and  NumberLong("1431677405876") will become 1431677405876.
