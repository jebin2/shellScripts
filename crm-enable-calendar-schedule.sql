crmtrialfeature="$(psql -U root sasdb -c 'select accessibileby from '${schemas[7]}'.crmtrialfeatures limit 1;')"
declare -p crmtrialfeature
declare -a crmtrialfeaturezuid=(${crmtrialfeature[0]})
echo "${crmtrialfeaturezuid[2]}"
psql -U root sasdb -c "insert into ${schemas[7]}.crmtrialfeatures values('111111000000035504','Calendar_Schedule','${crmtrialfeaturezuid[2]}',0,true);"
psql -U root sasdb -c "select featurename, status from ${schemas[7]}.crmtrialfeatures where featurename = 'Calendar_Schedule';"
