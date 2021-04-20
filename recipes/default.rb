extra_hosts = node['chef-learn-101']['env']
package 'apache2' do
    action :install
end

service 'apache2' do
    action :start
end

template '/var/www/html/index.html' do
    source 'static-web/index.html.erb'
    variables( :hostname => extra_hosts )
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end 
remote_directory '/var/www/html' do
    source 'static-web'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end



