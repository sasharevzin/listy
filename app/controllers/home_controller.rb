class HomeController < ApplicationController
  def index
    render text: __FILE__
  end
end
