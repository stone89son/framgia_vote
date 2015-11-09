class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable
  has_many :votes

  validate :framgia_email

  def canlidate_voted? canlidate
    award = canlidate.award
    vote = votes.where(award: award).first
    vote && vote.canlidate == canlidate
  end

  def award_voted? award
    votes.where(award: award).first.present?
  end

  private
  def framgia_email
    domain = email.scan(/@(.*)$/).first.try(:first)
    return unless domain
    if domain != "framgia.com"
      errors.add(:email, "must be Framgia email")
    end
  end
end
