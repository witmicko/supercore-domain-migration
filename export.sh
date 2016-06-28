ssh hadmin@192.168.33.10 'mongodump -out supercore_dump --db fh-supercore && zip -r supercore_dump.zip supercore_dump/fh-supercore' &&
scp hadmin@192.168.33.10:supercore_dump.zip . &&
ssh hadmin@192.168.33.10 'rm -R supercore_dump && rm supercore_dump.zip'
