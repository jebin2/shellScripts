psql -U root sasdb -c "update ${schemas[7]}.crmlicensekey set pre_ent_trial_license_type=null , pre_ent_trial_no_of_users=100 , no_of_users=100, free_users=100;"
psql -U root sasdb -c "select pre_ent_trial_license_type, pre_ent_trial_no_of_users, no_of_users, free_users from ${schemas[7]}.crmlicensekey;"
