require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Member do
  before(:each) do
    @valid_attributes = {
      :first_name => 'Ima',
      :last_name => 'Tester',
      :email => 'ima.tester@example.com'
    }
  end

  it "should create a new instance given valid attributes" do
    Member.create!(@valid_attributes)
  end
end
