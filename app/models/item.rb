class Item
  include Mongoid::Document
  field :name, type: String
  field :status, type: String
  field :condition, type: String
end
