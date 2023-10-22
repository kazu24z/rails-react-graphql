module Resolvers 
	module Mutations
		class CreateBook < GraphQL::Schema::Resolver
			argument :params, InputTypes::Book, required: true
			
			type ObjectTypes::Book, null: false
			
			def resolve(params:)
				book = Book.create!(params.to_h)		
				book
			rescue => e
				raise GraphQL::ExecutionError.new(e.message)
			end
		end
	end
end