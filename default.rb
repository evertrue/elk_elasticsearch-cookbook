set['elasticsearch']['allocated_memory'] = (node['memory']['total'] * 0.45 / 1024).to_s + 'm'
set['elasticsearch']['cluster']['name'] = "#{node.chef_environment}_logstash"

set['elasticsearch']['custom_config']['index.number_of_shards'] = 3
set['elasticsearch']['custom_config']['indices.memory.index_buffer_size'] = '50%'
set['elasticsearch']['custom_config']['index.translog.flush_threshold_ops'] = '50000'
