class Welcome
  include Mongoid::Document
  include Mongoid::Timestamps
  field :greeting, type: String
end
