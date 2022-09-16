class Mutations::UpdateArtist < Mutations::BaseMutation
  argument :params, Types::ArtistInputType, required: true
  argument :id, ID

  field :artist, Types::ArtistType

  def resolve(params:, id:)

    artist = Artist.find(id)

    if artist.update(params.to_h)
      { artist: artist }
    else
      GraphQL::ExecutionError.new("Invalid attrs for #{artist.class}: #{artist.errors.full_messages.join(',')}")
    end
  end
end