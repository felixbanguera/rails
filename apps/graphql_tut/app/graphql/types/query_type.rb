Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  # queries are just represented as fields
  field :allLinks, function: Resolvers::LinksSearch

  field :allUsers, !types[Types::UserType] do
    resolve -> (obj, args, ctx) { User.all }
  end

  field :link, !types[Types::LinkType] do
    argument :link_id, types.String
    # resolve would be called in order to fetch data for that field
    resolve -> (obj, args, ctx) { [Link.find(args[:link_id].to_i)] }
  end
end