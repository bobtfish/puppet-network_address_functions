require 'spec_helper'

describe 'network_address_functions' do
  context 'supported operating systems' do
    ['Debian', 'RedHat'].each do |osfamily|
      describe "network_address_functions class without any parameters on #{osfamily}" do
        let(:params) {{ }}
        let(:facts) {{
          :osfamily => osfamily,
        }}

        it { should include_class('network_address_functions::params') }

        it { should contain_class('network_address_functions::install') }
        it { should contain_class('network_address_functions::config') }
        it { should contain_class('network_address_functions::service') }
      end
    end
  end

  context 'unsupported operating system' do
    describe 'network_address_functions class without any parameters on Solaris/Nexenta' do
      let(:facts) {{
        :osfamily        => 'Solaris',
        :operatingsystem => 'Nexenta',
      }}

      it { expect { should }.to raise_error(Puppet::Error, /Nexenta not supported/) }
    end
  end
end
