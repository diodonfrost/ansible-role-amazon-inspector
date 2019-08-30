amazon_ssm_package = 'amazon-ssm-agent'
amazon_ssm_service = 'awsagent'

control 'inspector-01' do
  impact 1.0
  title 'Amazon inspector agent install'
  desc 'Amazon inspector agent should be installed'
  describe.one do
    describe package(amazon_ssm_package) do
      it { should be_installed }
  end
end

control 'inspector-02' do
  impact 1.0
  title 'Amazon inspector service'
  desc 'Amazon inspector agent service should be started and enabled'
  describe.one do
    describe service(amazon_ssm_service) do
      it { should be_enabled }
      it { should be_running }
    end
    describe upstart_service(amazon_ssm_service) do
      it { should be_enabled }
      it { should be_running }
    end
  end
end
