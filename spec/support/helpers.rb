module Helpers
  def sign_in(account)
    token = create_jwt_token(sub: account.id, aud: 'user_auth')
    request.headers['Authorization'] = "Bearer #{token}"
  end
end
