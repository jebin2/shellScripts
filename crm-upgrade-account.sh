schemas=($(psql -U root sasdb -c '\dn;'))
declare -p schemas
readarray sqlCmd < /home/local/ZOHOCORP/jebin-7344/zoho/script/crm-upgrade-acc.sql
for i in "${sqlCmd[@]}"
do
   echo "$i"
   eval $i
done
