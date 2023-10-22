module Resolvers
	module Mutations
		class UpdateBook < GraphQL::Schema::Resolver
			argument :id, ID, required: true
			argument :params, InputTypes::Book, required: true
			
			type ObjectTypes::Book, null: false
			
			def resolve(id:, params:)
				book = Book.find(id)
				book.update!(params.to_h)
				
				book
			rescue => e	
				raise GraphQL::ExecutionError.new(e.message)
			end
		end
	end
end