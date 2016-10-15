require_relative "spec_helper"

describe User do
  let(:guest1) { Guest.new }
  let(:guest2) { Guest.new(user_id: 1, event_id: 1) }

  context "#Not Created" do
    it "does not have a user ID" do
      expect(guest1.user_id).to eq nil
    end
    it "does not have an event ID" do
      expect(guest1.event_id).to eq nil
    end
  end
  
  context "#Created" do
    it "has a user ID" do
      expect(guest2.user_id).to eq(1)
    end
    it "has an event ID" do
      expect(guest2.event_id).to eq(1) 
    end
  end

end