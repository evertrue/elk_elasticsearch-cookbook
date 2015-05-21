# elk_elasticsearch [![Build Status](https://travis-ci.org/evertrue/elk_elasticsearch-cookbook.svg)](https://travis-ci.org/evertrue/elk_elasticsearch-cookbook) [![Dependency Status](https://gemnasium.com/evertrue/elk_elasticsearch-cookbook.svg)](https://gemnasium.com/evertrue/elk_elasticsearch-cookbook)

A Simple wrapper for the elasticsearch cookbook that optimises it for Logstash.  This cookbook will automatically discover and cluster with node with the `elk_elasticsearch::default` recipe in their expanded run list

# Requirements

* `elasticsearch` cookbook

# Recipes

## default

Installs and configures elasticsearch on the node using optimized attributes

1. Install Elasticsearch
  * Uses the following `elasticsearch` cookbook atts
    - `['elasticsearch']['allocated_memory']` : 50% of Host Memory
    - `['elasticsearch']['cluster']['name']` : "#{node.chef_environment}-elk"
    - `['elasticsearch']['path']['logs']` : [first ephemeral if exists]/elasticsearch/logs
    - `['elasticsearch']['path']['data']` : [first ephemeral if exists]/elasticsearch/data
    - `['elasticsearch']['custom_config']['index.number_of_shards']` : 3
    - `['elasticsearch']['custom_config']['indices.memory.index_buffer_size']` : '50%'
    - `['elasticsearch']['custom_config']['index.translog.flush_threshold_ops']` : 50000
  * Installs Java 7 (OpenJDK)
2. Installs the following plugins
  * elasticsearch/elasticsearch-cloud-aws
  * sonian/elasticsearch-jetty
  * mobz/elasticsearch-head
  * royrusso/elasticsearch-HQ
3. Discovers cluster
  * Searches chef for nodes with the `elk_elasticsearch` recipe in the same env

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
