#
# Cookbook Name:: nginx_node
# Recipe:: web_user
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
group node['nginx_node']['group']

user node['nginx_node']['user'] do
  group 'web_admin'
  system true
  shell '/bin/bash'
end
