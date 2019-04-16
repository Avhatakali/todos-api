require 'rails_helper'

#test suite for the Todo model
RSpec.describe Todo, type: :model do
  # ensure Todo model has a 1:m relationship with the Item model
  it { should have_many(:items).dependent(:destroy) }
  # ensure columns title and created_by are present before saving
  it { validate_presence_of(:title) }
  it { validate_presence_of(:created_by) }
end
