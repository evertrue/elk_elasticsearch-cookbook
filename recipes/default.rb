#
# Cookbook Name:: elk_elasticsearch
# Recipe:: default
#
# Copyright (c) 2015 EverTrue, inc., All Rights Reserved.

include_recipe 'java'

include_recipe 'storage'

if node['storage']['ephemeral_mounts'].any?
  node.set['elasticsearch']['path']['logs'] =
    "#{node['storage']['ephemeral_mounts'].first}/elasticsearch/logs"
  node.set['elasticsearch']['path']['data'] =
    "#{node['storage']['ephemeral_mounts'].first}/elasticsearch/data"
end

node.set['elasticsearch']['node.master'] = node['roles'].include?('es_master')
node.set['elasticsearch']['node.data'] = true

include_recipe 'elasticsearch'
