module SpecUserHelper
  def login_as(user = FactoryGirl.create(:user))
    request.session[:user_id] = user.id
  end
end
