#
# Cookbook Name:: nginx-and-ruby
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

file '/etc/yum.repos.d/nginx.repo' do
  content <<-EOL
[nginx]
name=nginx repo
baseurl=http://nginx.org/packages/centos/$releasever/$basearch/
gpgcheck=0
enabled=1
EOL
  mode '0755'
  owner 'root'
  group 'root'
end

yum_package "nginx"

service "nginx" do
  action :start
end

include_recipe "ruby_build"
include_recipe "ruby_rbenv::system"
rbenv_global "2.3.0"
