require 'spec_helper'

describe 'centos_errata' do
  context 'supported operating systems' do
    on_supported_os.each do |os, facts|
      context "on #{os}" do
        let(:facts) do
          facts
        end

        context "centos_errata class without any parameters" do
          it { is_expected.to compile.with_all_deps }

          it { is_expected.to contain_class('centos_errata::params') }
          it { is_expected.to contain_class('centos_errata::install').that_comes_before('centos_errata::config') }
          it { is_expected.to contain_class('centos_errata::config') }
          it { is_expected.to contain_class('centos_errata::service').that_subscribes_to('centos_errata::config') }

          it { is_expected.to contain_service('centos_errata') }
          it { is_expected.to contain_package('centos_errata').with_ensure('present') }
        end
      end
    end
  end

  context 'unsupported operating system' do
    describe 'centos_errata class without any parameters on Solaris/Nexenta' do
      let(:facts) do
        {
          :osfamily        => 'Solaris',
          :operatingsystem => 'Nexenta',
        }
      end

      it { expect { is_expected.to contain_package('centos_errata') }.to raise_error(Puppet::Error, /Nexenta not supported/) }
    end
  end
end
