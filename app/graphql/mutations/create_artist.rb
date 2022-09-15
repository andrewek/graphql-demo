class Mutations::CreateArtist < Mutations::BaseMutation
  argument :params, Types::ArtistInputType, required: true

  field :artist, Types::ArtistType
  field :errors, [String], null: false

  def resolve(params:)
    params = params.to_h
    artist = Artist.new(params)

    if artist.save
      { artist: artist, errors: [] }
    else
      GraphQL::ExecutionError.new("Invalid attrs for #{artist.class}: #{artist.errors.full_messages.join(',')}")
    end
  end
end