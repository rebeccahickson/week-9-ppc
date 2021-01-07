class Party < ApplicationRecord
  belongs_to :category
  has_many :parties_supplies
  has_many :supplies, through: :parties_supplies
  accepts_nested_attributes_for :category, reject_if: proc { |attr| attr[:name].blank? }
  accepts_nested_attributes_for :supplies, reject_if: proc { |attr| attr[:name].blank? }

  def private?
    private ? 'Private' : 'Public'
  end
end
