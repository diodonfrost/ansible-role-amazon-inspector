amazon_ssm_package = 'amazon-ssm-agent'
amazon_ssm_service = 'awsagent'

control 'inspector-01' do
  impact 1.0
  title 'Amazon inspector agent install'
  desc 'Amazon inspector agent should be installed'
  describe command('/opt/aws/awsagent/bin/awsagent status') do
    its('exit_status') { should eq 0 }
  end
end

control 'inspector-02' do
  impact 1.0
  title 'Amazon inspector service'
  desc 'Amazon inspector agent service should be started and enabled'
  describe service(amazon_ssm_service) do
    it { should be_enabled }
    it { should be_running }
  end
end
