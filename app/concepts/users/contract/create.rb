module Users::Contract
  class Create < Reform::Form
    include Dry

    property :email
    property :password
    property :password_confirmation

    validation do
      configure do
        config.messages = :i18n
        config.namespace = :user

        def email_unique?(value)
          User.where(email: value).empty?
        end
      end

      required(:email).filled(:email_unique?)
      required(:password).filled(min_size?: 6).confirmation
    end
  end
end
