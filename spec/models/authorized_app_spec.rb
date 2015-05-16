require 'rails_helper'

RSpec.describe AuthorizedApp, type: :model do
  it { should belong_to(:user) }
  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:provider) }
  it { should validate_presence_of(:uid) }
  it { should validate_presence_of(:token) }
  it { should validate_uniqueness_of(:provider).scoped_to(:user_id) }
  it { should validate_uniqueness_of(:uid).scoped_to(:provider) }

end