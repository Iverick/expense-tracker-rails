# frozen_string_literal: true
class HomeController < ApplicationController
  def index
    @lists = List.all
  end
end
