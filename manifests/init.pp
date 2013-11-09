# == Class: network_address_functions
#
# Full description of class network_address_functions here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class network_address_functions (
) inherits network_address_functions::params {

  # validate parameters here

  class { 'network_address_functions::install': } ->
  class { 'network_address_functions::config': } ~>
  class { 'network_address_functions::service': } ->
  Class['network_address_functions']
}
