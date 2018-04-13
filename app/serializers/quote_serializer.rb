class QuoteSerializer < ActiveModel::Serializer
  attributes :id, :title, :quote, :author
  # has_one :user
end
