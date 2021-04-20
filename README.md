# chef-learn-101

TODO: Enter the cookbook description here.
1)  knife cookbook upload chef-learn-101
2)  knife node run_list add dev recipe[chef-learn-101::default]  # change dev -> to u r env on chef dev server.
3)  knife node run_list add prod recipe[chef-learn-101::default] # change pord -> to u r env on chef  prod server.
4)  knife environment from file chef-lerarn-dev.json
5)  knife environment from file chef-learn-prod.json
6)  sudo chef-client  # on both ec2 instance 

