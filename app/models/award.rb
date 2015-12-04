class Award < ActiveRecord::Base
  has_many :canlidates
  has_many :votes
  mount_uploader :banner, AvatarUploader

  scope :main, -> {where(main_flg: true)}
  scope :vice, -> {where(main_flg: false)}
end
