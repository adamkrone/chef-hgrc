require 'spec_helper'

describe 'hgrc::default' do
  describe file('/home/vagrant/.hgrc') do
    it { should be_file }
    it { should contain '[extensions]' }
    it { should contain 'color =' }
    it { should contain 'pager =' }
    it { should contain '[auth]' }
    it { should contain 'vagrant.prefix = hg.example.com' }
    it { should contain 'vagrant.username = vagrant' }
    it { should contain 'vagrant.password = mypassword' }
    it { should contain 'vagrant.schemes = http https' }
  end
end
