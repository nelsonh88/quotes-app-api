class QuoteSerializer < ActiveModel::Serializer
  attributes :id, :quote, :author
  has_one :user
end
