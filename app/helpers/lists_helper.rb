module ListsHelper
  def users_list
    current_user.id == @list.user_id
  end
  alias_method :users_list?, :users_list
end
