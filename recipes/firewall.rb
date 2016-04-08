#
# Cookbook Name:: nginx_node
# Recipe:: firewall
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
include_recipe 'firewall::default'

ports = node.default['nginx_node']['open_ports']
firewall_rule "open ports #{ports}" do
  port ports
end
