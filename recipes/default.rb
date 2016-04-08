#
# Cookbook Name:: nginx_node
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
%w(epel-release nginx).each do |pkg|
  package pkg do
    action :install
  end
end

service 'nginx' do
  action [:enable, :start]
end

cookbook_file '/usr/share/nginx/html/index.html' do
  source 'index.html'
  mode '0644'
end
