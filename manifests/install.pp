# == Class network_address_functions::intall
#
class network_address_functions::install {
  include network_address_functions::params

  package { $network_address_functions::params::package_name:
    ensure => present,
  }
}
