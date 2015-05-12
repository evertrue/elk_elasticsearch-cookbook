set['elasticsearch']['version'] = '1.4.4'
set['elasticsearch']['cluster']['name'] = "elk-#{node.chef_environment}"

set['elasticsearch']['index']['search']['slowlog']['threshold']['query'] = {
  'warn' => '5s',
  'debug' => '1s'
}
set['elasticsearch']['discovery'] = {
  'search_query' => 'elasticsearch_cluster_name:' +
                    node['elasticsearch']['cluster']['name'] +
                    ' AND elasticsearch_node.master:true' \
                    " AND chef_environment:#{node.chef_environment}",
  'node_attribute' => nil
}

set['elasticsearch']['plugins'] = {
  'royrusso/elasticsearch-HQ'  => {},
  'mobz/elasticsearch-head'    => {},
  'sonian/elasticsearch-jetty' => {
    'url' => 'https://oss-es-plugins.s3.amazonaws.com/elasticsearch-jetty/elasticsearch-jetty-1.2.1.zip'
  },
  'elasticsearch/elasticsearch-cloud-aws' => {
    'version' => '2.4.1'
  }
}

set['java']['java_home']   = '/usr/lib/jvm/java-7-openjdk-amd64'
set['java']['java_exec']   = node['java']['java_home'] + '/bin/java'
set['java']['jdk_version'] = '7'

allocated_memory = "#{(node['memory']['total'].to_i * 0.5).floor / 1024}m"
set['elasticsearch']['allocated_memory'] = allocated_memory
default['elasticsearch']['index_base_key'] = 'default-0'
