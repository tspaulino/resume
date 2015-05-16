class AuthorizedApp < ActiveRecord::Base
  belongs_to :user
  validates :name, :provider, :user_id, :uid, :token, presence: true
  validates_uniqueness_of :provider, scope: [:user_id]
  validates_uniqueness_of :uid, scope: [:provider]
end