# == Class network_address_functions::params
#
# This class is meant to be called from network_address_functions
# It sets variables according to platform
#
class network_address_functions::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'network_address_functions'
      $service_name = 'network_address_functions'
    }
    'RedHat', 'Amazon': {
      $package_name = 'network_address_functions'
      $service_name = 'network_address_functions'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
