class JsonWebToken

    # This the variable SECRETKEY
    SECRET_KEY = Rails.application.secrets.secret_key_base. to_s

    # this method uses JWT encode a token and give it a 24 hr expiry
    def self.encode(payload, exp = 24.hours.from_now)
        payload[:exp] = exp.to_i
        JWT.encode(payload, SECRET_KEY)
    end

    # this method uses JWT to decode the token and set to variable decoded
    def self.decode(token)
        decoded = JWT.decode(token, SECRET_KEY)[0]
        HashWithIndifferentAccess.new decoded
    end
end
