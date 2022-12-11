class List < ApplicationRecord
  belongs_to :user
  has_many :expenses, dependent: :destroy

  validates_presence_of :name, length: { in: 2..100 }

  def total_cost
    total_cost = 0
    self.expenses.each { |expense| total_cost += expense.cost * expense.amount }

    total_cost.round(2)
  end
end
