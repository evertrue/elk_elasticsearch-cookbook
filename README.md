# elk_elasticsearch

[![Build Status](https://travis-ci.org/evertrue/elk_elasticsearch-cookbook.svg)](https://travis-ci.org/evertrue/elk_elasticsearch-cookbook)

A Simple wrapper for the elasticsearch cookbook that optimises it for Logstash 

# Requirements

* `elasticsearch` cookbook

# Recipes

## default

Installs and configures elasticsearch on the node using optimized attributes

1. Install Elasticsearch
   * Uses the following `elasticsearch` cookbook atts
     - `['elasticsearch']['allocated_memory']` : 45% of Host Memory
     - `['elasticsearch']['cluster']['name']` : "#{node.chef_environment}_logstash"
     - `['elasticsearch']['path']['logs']` : [Disk w/ most free space]/elasticsearch/logs
     - `['elasticsearch']['path']['data']` : [Disk w/ most free space]/elasticsearch/data
     - `['elasticsearch']['custom_config']['index.number_of_shards']` : 3
     - `['elasticsearch']['custom_config']['indices.memory.index_buffer_size']` : '50%'
     - `['elasticsearch']['custom_config']['index.translog.flush_threshold_ops']` : 50000
     

# Usage

Include this recipe in a wrapper cookbook:

```
depends 'elk_elasticsearch', '~> 1.0'
```

```
include_recipe 'elk_elasticsearch::default'
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests with `kitchen test`, ensuring they all pass
6. Submit a Pull Request using Github

## License and Authors

Author:: EverTrue, inc. (devops@evertrue.com)
