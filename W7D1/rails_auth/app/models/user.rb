class User < ApplicationRecord
    validates :username, :session_token, presence:true
    validates :password_digest, presence:{ message: 'Password can\'t be blank' }
    validates :password, length: { minimum: 6, allow_nil: true }
    validates :session_token, presence: true, uniqueness: true

    def reset_session_token!
        self.session_token = generate_unique_session_token
        self.save!
        self.session_token
    end
    

    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password)
    end

    def is_password?(password)
        BCrypt::Password.new(password_digest).is_password?(password)
    end

    private

    def generate_unique_session_token
        # `SecureRandom::urlsafe_base64` does not guarantee uniqueness. Wrapping
        # this call in a loop ensures that no other user has the generated token.
        loop do
        session_token = SecureRandom::urlsafe_base64(16)
        return session_token unless User.exists?(session_token: session_token)
        end
    end

    def ensure_session_token
        self.session_token ||= generate_unique_session_token
    end

end