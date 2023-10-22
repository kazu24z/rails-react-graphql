# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_book, resolver: Resolvers::Mutations::CreateBook
    field :update_book, resolver: Resolvers::Mutations::UpdateBook
    field :delete_book, resolver: Resolvers::Mutations::DeleteBook
  end
end
