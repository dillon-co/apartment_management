# == Schema Information
#
# Table name: multiplexes
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Multiplex < ActiveRecord::Base
  belongs_to :landlord
  belongs_to :manager
  has_many :appartments

end
