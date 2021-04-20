# chef-learn-101
Clone this repo inside the chef-repo-> cookbooks -> git clone git-url


TODO: Enter the cookbook description here.
1)  knife cookbook upload chef-learn-101
2)  knife node run_list add dev recipe[chef-learn-101::default]  # change dev -> to u r env on chef dev server.
3)  knife node run_list add prod recipe[chef-learn-101::default] # change pord -> to u r env on chef  prod server.
# Adding Enviormnet 
  chef-repo-> environments -> create  chef-lerarn-dev.json
      
      {
    "name": "chef-development",
    "description": "",
    "cookbook_versions": {
            "chef-learn-101": "= 0.1.0"
    },
    "json_class": "Chef::Environment",
    "chef_type": "environment",
    "default_attributes": {
    },
    "override_attributes": {
            "chef-learn-101": {
                 "env": "development"
            }
    }
 }
 chef-repo-> environments -> create  chef-learn-prod.json
 
     {
    "name": "chef-producation",
    "description": "",
    "cookbook_versions": {
            "chef-learn-101": "= 0.1.0"
    },
    "json_class": "Chef::Environment",
    "chef_type": "environment",
    "default_attributes": {
    },
    "override_attributes": {
            "chef-learn-101": {
                 "env": "Production"
            }
    }
 }
 
  
5)  knife environment from file chef-lerarn-dev.json
6)  knife environment from file chef-learn-prod.json
7)  in chef server change enviroment to chef-development from dev env.
8)  in chef server change enviroment to chef-producation from prod env.
9)  sudo chef-client  # on both ec2 instance 





