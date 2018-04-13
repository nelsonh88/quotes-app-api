class QuoteSerializer < ActiveModel::Serializer
  attributes :id, :title, :text, :author
  has_one :user
end
