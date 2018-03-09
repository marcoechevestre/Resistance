require 'rails_helper'

RSpec.describe Survivor, type: :model do

  it { should have_many(:inventories).dependent(:destroy) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:gender) }
  it { should validate_presence_of(:birth_date) }
  it { should validate_presence_of(:status)}
  it { should validate_presence_of(:latitude) }
  it { should validate_presence_of(:longitude) }
  it { should validate_presence_of(:reports) }


end
