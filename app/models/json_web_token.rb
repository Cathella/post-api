class JsonWebToken
  def self.encode(check)
    expire = 60.minutes.from_now.to_i
    JWT.encode check.merge(exp: expire), Rails.application.secrets.secret_key_base
  end

  def self.decode(token)
    JWT.decode(token, Rails.application.secrets.secret_key_base).first
  end
end