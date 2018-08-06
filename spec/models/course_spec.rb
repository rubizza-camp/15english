require "rails_helper"
require File.dirname(__FILE__) + '/../spec_helper'

RSpec.describe Course, type: :model do
  before(:all) do
    @user1 = create(:course)
  end

  it "valid with valid attributes" do
    @course1 = create(:course)
  end

  it "not valid big name" do
   should_not be_valid(title: 'qqq'*10)
  end
end
