# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name, :quotes

  def quotes
    object.quotes
  end
end
