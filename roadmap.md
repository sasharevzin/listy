sep 16
1. integrate with bootstrap
2.
====
Listing website (Real estate)

Users:

1. has 3 roles
  a. admin: add/remove everything, has to approve a new listing
  b. agent: posting a listing for aproval
  c. client: contact to agent, save listing to the favs

serialize HIGHLIGHTS

2. listing: address, images, description, HIGHLIGHTS:text, price, status
3. search by listing attributes
4. auth
5. via github
6. heroku

github

before_action :auth

def auth
  unless current_user.is?(:admin)
    render status: 401
  end
end

def create
  render status: 404
end

rails g scaffold user first_name last_name email role password_digest
1. user logged in
2. created a new listing

has_listings

Listing