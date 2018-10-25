module Comments::Contract
  class Create < Reform::Form
    include Dry

    property :body
    property :attachment

    validation do
      required(:body).filled(:str?)
      optional(:attachment).maybe(:str?)
    end
  end
end
