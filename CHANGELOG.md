# Change Log for elk_elasticsearch
All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased][unreleased]
### Changed

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
