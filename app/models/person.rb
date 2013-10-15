class Person < ActiveRecord::Base
  belongs_to :user
  has_one :personal_infos
  has_many :formal_educations
  has_many :no_formal_educations
  has_many :experiences
  has_many :references
  has_many :languages
end
