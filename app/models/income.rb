class Income < ActiveRecord::Base
  belongs_to :cash_flow
  # before_create :set_default_values

  # def set_default_values
  #   income.create(name: 'rent')
  #   income.create(name: 'garage rent')
  #   income.create(name: 'laundry income')
  #   income.create(name: 'late_fee')
  # end

  def self.income_type(name)
      new name: name
  end
end
