# == Class network_address_functions::service
#
# This class is meant to be called from network_address_functions
# It ensure the service is running
#
class network_address_functions::service {
  include network_address_functions::params

  service { $network_address_functions::params::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
