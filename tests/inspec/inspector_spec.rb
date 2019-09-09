control 'inspector-01' do
  impact 1.0
  title 'Amazon inspector agent install'
  desc 'Amazon inspector agent should be installed'
  describe command('/opt/aws/awsagent/bin/awsagent status') do
    its('exit_status') { should eq 0 }
  end
end