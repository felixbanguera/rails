class Resolvers::DeleteUser < GraphQL::Function
  argument :id, !types.String

  # defines inline return type for the mutation
  type Types::UserType

  def call(_obj, args, _ctx)
    puts "DeleteUser::call >args: #{args}"
    id = args[:id]
    puts "DeleteUser::call >id: #{id}"
    user = User.find(id)
    # ensures we have the correct user
    return unless user

    puts "DeleteUser::call > user: #{user}"

    user.destroy
  end
end