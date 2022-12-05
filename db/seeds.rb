# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
categories = Category.create([{ name: "Travelling"}, { name: "Clothing"}, { name: "Taxi"}, { name: "Cafes"}, { name: "Shops"}, { name: "Other"} ])
lists = List.create([{ name: "Test List User 1", user_id: 1 }, { name: "Test List User 2", user_id: 2 }])
expenses = Expense.create([
  { name: "Friday taxi", amount: 1, cost: "18.3", list_id: 1, category_id: 3 },
  { name: "Bought Two T-Shirts", amount: 2, cost: "59.2", list_id: 2, category_id: 2 }
])
