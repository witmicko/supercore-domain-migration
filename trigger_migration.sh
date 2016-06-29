scp colldump.sh hadmin@192.168.33.10: &&
ssh hadmin@192.168.33.10 'chmod +x colldump.sh && ./colldump.sh' &&
scp hadmin@192.168.33.10:dump.zip . &&
ssh hadmin@192.168.33.10 'rm -R dump && rm dump.zip colldump.sh' &&
unzip dump.zip &&
mongorestore --db fh-supercore dump/fh-supercore &&
rm dump.zip &&
rm -R dump
