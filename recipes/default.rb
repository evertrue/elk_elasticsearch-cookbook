#
# Cookbook Name:: elk_elasticsearch
# Recipe:: default
#
# Copyright (c) 2015 EverTrue, inc., All Rights Reserved.

include_recipe 'java'

include_recipe 'storage'

if node['storage']['ephemeral_mounts'].any?
  set['elasticsearch']['path']['logs'] = "#{node['storage']['ephemeral_mounts']}/elasticsearch/logs"
  set['elasticsearch']['path']['data'] = "#{node['storage']['ephemeral_mounts']}/elasticsearch/data"
end

include_recipe 'elasticsearch'
