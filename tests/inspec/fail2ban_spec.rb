# Fail2ban  setup

control 'setup-01' do
  impact 1.0
  title 'Fail2ban ignore ip'
  desc 'Fail2ban should be ignore local ip'
  describe file('/etc/fail2ban/jail.conf') do
    its('content') { should match 'ignoreip = 127.0.0.1/8' }
  end
end
