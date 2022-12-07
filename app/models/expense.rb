class Expense < ApplicationRecord
  belongs_to :list
  belongs_to :category

  def total_cost
    (cost * amount).round(2)
  end
end
