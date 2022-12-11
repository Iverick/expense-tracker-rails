class Expense < ApplicationRecord
  belongs_to :list
  belongs_to :category

  validates_presence_of :name, length: { in: 2..100 }
  validates_presence_of :amount, numericality: { only_integer: true }
  validates_presence_of :cost

  def total_cost
    (cost * amount).round(2)
  end
end
