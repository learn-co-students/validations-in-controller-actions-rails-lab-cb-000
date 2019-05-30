require "rails_helper"

RSpec.describe AuthorsController do
  let(:jeff) { Author.create!(name: "H. Jeff", email: "jeff@sbahj.info") }
  let(:jeff_found) { Author.find_by(email: jeff.email) }



  describe "creating an invalid author" do
    let(:bad_attributes) { { email: jeff.email } }
    let(:jeff_bad) { Author.create(bad_attributes) }

    it "does not create" do
      expect(jeff_bad).to be_new_record
    end

    it "has an error for missing name" do
      expect(jeff_bad.errors[:name]).to_not be_empty
    end

    it "has an error for non-unique email" do
      expect(jeff_bad.errors[:email]).to_not be_empty
    end

    
  end
end
