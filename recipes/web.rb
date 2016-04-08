#
# Cookbook Name:: nginx_node
# Recipe:: web
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
# Install nginx and start the service.

package 'nginx' do
  action :install
end

service 'nginx' do
  action [:enable, :start]
end

cookbook_file '/usr/share/nginx/www/index.html' do
  source 'index.html'
  mode '0644'
end
