class CategoryController < ApplicationController
  before_action :set_category, only: %i[ show ]

  # GET /category/1
  def show
    @user_list_ids = List.where("user_id = #{current_user.id}").pluck(:id)
    @expenses = Expense
                  .where("category_id = #{@category.id}")
                  .select{ |expense| expense if @user_list_ids.include?(expense.list_id) }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end
end
