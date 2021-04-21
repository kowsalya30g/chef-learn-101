# chef-learn-101
If u want can change the version as 0.1.1 in metadata.rb file so that version will be displayed in chef server and should mention that in environment files also.... 

Clone this repo inside the chef-repo-> cookbooks -> git clone git-url

Then go inside files 

chef-repo -> cookbooks -> chef-learn-101 -> files - > clone here the static web files by pasting this url 
````
git clone https://github.com/kowsalya30g/static-web.git

````

TODO: Enter the cookbook description here.

````
  knife cookbook upload chef-learn-101
````
````
  knife node run_list add dev recipe[chef-learn-101::default]   
````  
 #### change dev -> to ur env on chef dev server.
````
  knife node run_list add production recipe[chef-learn-101::default]   
````
 #### change pord -> to ur env on chef  prod server.

# Adding Enviorment

  chef-repo-> environments -> create  chef-learn-dev.json
````
{
    "name": "chef-development",
    "description": "",
    "cookbook_versions": {
            "chef-learn-101": "= 0.1.1"
    },
    "json_class": "Chef::Environment",
    "chef_type": "environment",
    "default_attributes": {
    },
    "override_attributes": {
            "chef-learn-101": {
                 "env": "development",
                 "name": "Kowsalya"
            }
    }
}

````    
#### for prod dept 

 chef-repo-> environments -> create  chef-learn-prod.json 
 
````
{
    "name": "chef-production",
    "description": "",
    "cookbook_versions": {
            "chef-learn-101": "= 0.1.1"
    },
    "json_class": "Chef::Environment",
    "chef_type": "environment",
    "default_attributes": {
    },
    "override_attributes": {
            "chef-learn-101": {
                 "env": "Production",
                 "name": "Vimalesh"
            }
    }
    }
````
Then upload the environment files 
````
knife environment from file chef-learn-dev.json
````
for other node production  
````
 knife environment from file chef-learn-prod.json
````

In chef server(chef portal) change enviroment to chef-development from dev env.
In chef server change enviroment to chef-production from prod env.

Then run the dev and prod instances and run the below commands 
````
sudo chef-client 
````

Click the ip address of dev and prod instances and see the output





