# Change Log for elk_elasticsearch
All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased][unreleased]
### Changed

## [1.0.2] - 2015-11-17
### Changed
- Set indices.breaker.fielddata.limit and indices.fielddata.cache.size

## [1.0.1] - 2015-10-15
### Changed
- Lowered memory cap to 40% of system total because we're getting OOMs

## [1.0.0] - 2015-09-16
### Added
- Version Pins

## [0.1.1] - 2015-08-11
### Changed
- Add `nil` check on `node['storage']` attribute

## [0.1.0] - 2015-06-01
### Added
- Added es_master role for TK tests

### Changed
- Now using all ephemeral mounts instead of just the first

## [0.0.3] - 2015-06-01
### Changed
- Move all attribute overrides to the Install recipe to avoid accidental attribute leakage which could be very detrimental to upsteam users

### Removed
- Version pins on elasticsearch and storage cookbooks

## [0.0.2] - 2015-05-28
### Added
- Install and Ruby Recipes

### Changed
- Moved everything from default recipe to the install recipe

## 0.0.1 - 2015-05-12
### Added
- Initial Testing Release

[unreleased]: https://github.com/evertrue/elk_elasticsearch/compare/v0.0.8...HEAD
[0.0.2]: https://github.com/evertrue/elk_elasticsearch/compare/v0.0.1...v0.0.2
[0.0.3]: https://github.com/evertrue/elk_elasticsearch/compare/v0.0.2...v0.0.3
