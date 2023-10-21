module  InputTypes
	class Book < Types::BaseInputObject
		graphql_name 'BookAttributes'

		argument :title, String, required: true
	end
end
