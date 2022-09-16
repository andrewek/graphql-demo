class Mutations::DestroyArtist < Mutations::BaseMutation
  argument :id, ID

  field :message, String

  def resolve(id:)
    artist = Artist.find(id)

    if artist.destroy
      {message: "DESTROYED"}
    else
      GraphQL::ExecutionError.new("Could not destroy artist")
    end
  end
end