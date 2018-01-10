Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createLink, function: Resolvers::CreateLink.new

  GraphqlTutorialSchema = GraphQL::Schema.define do
    query(Types::QueryType)
    mutation(Types::MutationType)
  end
end
