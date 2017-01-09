require 'spec_helper'

RSpec.describe SocialMedia::Service::Linkedin do
  context "class methods" do
    subject { described_class }
    its(:name) { is_expected.to eq :linkedin }
  end

  if service_configured? described_class.name
    let(:service) { described_class.new service_configurations[described_class.name] }
    subject { service }

    it "instantiates" do
      expect(subject).to be_a SocialMedia::Service::Linkedin
    end
    its(:app_key)     { is_expected.to_not be nil }
    its(:app_secret)  { is_expected.to_not be nil }
  end
end