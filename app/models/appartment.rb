# == Schema Information
#
# Table name: appartments
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Appartment < ActiveRecord::Base
  belongs_to :landlord
  belongs_to :manager
  belongs_to :multiplex
  has_many :tennants
  has_one :cash_flow
end
