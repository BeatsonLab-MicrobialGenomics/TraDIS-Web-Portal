require 'spec_helper'

describe Mynewdatum do

  let(:user) { FactoryGirl.create(:user) }
  before { @mynewdatum = user.mynewdata.build(contenta: "Lorem ipsum", contentb:"Lorem ipsum") }

  subject { @mynewdatum }

  it { should respond_to(:contenta) }
  it { should respond_to(:contentb) }
  it { should respond_to(:user_id) }
  its(:user) { should eq user }

  it { should be_valid }

  describe "when user_id is not present" do
    before { @mynewdatum.user_id = nil }
    it { should_not be_valid }
end
end