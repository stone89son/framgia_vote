class Vote < ActiveRecord::Base

  belongs_to :user
  belongs_to :canlidate
  belongs_to :award

end
