require File.join(File.dirname(__FILE__), '..', 'spec_helper')

shared_examples_for "real or mock login requests" do
  subject { @vcloud }
  it_should_behave_like "all login requests"
end

if Fog.mocking?
  describe Fog::Vcloud, :type => :mock_vcloud_request do
    it_should_behave_like "real or mock login requests"
  end
else
  describe Fog::Vcloud, :type => :vcloud_request do
    it_should_behave_like "real or mock login requests"
  end
end

