#!/bin/bash
PATH=/etc:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin

destination="/opt/mysql_backup"
userDB="root"
passwordDB="1234"
fdate=`date +%Y-%m-%d`

test -d $destination/$fdate || mkdir -p $destination/$fdate

for dbname in `echo show databases | mysql -u$userDB -p$passwordDB | grep -v Database`; do
    case $dbname in
        information_schema)
            continue ;;
        mysql)
            continue ;;
        performance_schema)
            continue ;;
        test)
            continue ;;
        sys)
            continue ;;
        *) mysqldump --databases --skip-comments --no-tablespaces -u$userDB -p$passwordDB $dbname | gzip > $destination/$fdate/$dbname.sql.gz ;;
    esac
done;