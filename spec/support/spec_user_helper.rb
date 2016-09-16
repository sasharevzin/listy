module SpecUserHelper
  def login_as()
    request.session[:user_id] = FactoryGirl.create(:user)
  end
end