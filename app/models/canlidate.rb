class Canlidate < ActiveRecord::Base

  belongs_to :award
  has_many :votes

  mount_uploader :banner, AvatarUploader
end
