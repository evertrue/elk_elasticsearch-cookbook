name             'elk_elasticsearch'
maintainer       'EverTrue, inc.'
maintainer_email 'devops@evertrue.com'
license          'all_rights'
description      'Installs/Configures elk_elasticsearch'
long_description 'Installs/Configures elk_elasticsearch'
version          '0.0.1'

supports 'ubuntu', '>= 12.04'

depends 'elasticsearch', '~> 0.3'
depends 'storage', '~> 2.2'
depends 'java'
