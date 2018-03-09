require 'rails_helper'

RSpec.describe Inventory, type: :model do

  it { should belong_to(:survivors)}

  it { should validate_presence_of(:owner) }
  it { should validate_presence_of(:name_item) }
  it { should validate_presence_of(:quality) }
  it { should validate_presence_of(:type) }
  it { should validate_presence_of(:points) }
  it { should validate_presence_of(:survivor_id) }
  

end
