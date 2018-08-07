# frozen_string_literal: true

require "rails_helper"

RSpec.describe Course, type: :model do
  it "valid with valid attributes" do
    @course1 = create(:course)
  end

  it "not valid big name" do
    should_not be_valid(title: "qqq" * 10)
  end
end
