module Resolvers
	module Mutations
		class DeleteBook < GraphQL::Schema::Resolver
			argument :id, ID, required: true
			
			type ID, null:false
			
			def resolve(id:)
				book = Book.find(id).delete
				id
			rescue =>e 
				raise GraphQL::ExecutionError.new(e.message)
			end
		end
	end
end