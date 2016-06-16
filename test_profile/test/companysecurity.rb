title 'Company security policy'
control 'telnet-1.0' do
  impact 0.3
  title 'telnet port is not opened'
  desc 'Check that tcp 23 port is not listening'
  describe port(23) do
  	it { should_not be_listening }
  end
end

control 'tmp-1.0' do
  impact 0.3
  title '/tmp1 directory exists'
  desc 'A /tmp1 directory must exist.'
  describe file('/tmp1') do
  	it { should be_directory }
  end
end

control 'tmp-1.1' do
  impact 0.3
  title '/tmp1 directory is owned by root user'
  desc '/tmp1 directory should be owned by root user'
  describe file('/tmp1') do
  	it { should be_owned_by 'root'  }
  end
end

