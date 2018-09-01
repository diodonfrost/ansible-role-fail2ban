# Fail2ban  install

control 'install-01' do
  impact 1.0
  title 'Fail2ban install'
  desc 'Fail2ban should be installed'
  describe package('fail2ban') do
    it { should be_installed }
  end
end

control 'install-02' do
  impact 1.0
  title 'Fail2ban service'
  desc 'Fail2ban should be enabled and started'
  describe service('fail2ban') do
    it { should be_enabled }
    it { should be_running }
  end
end
