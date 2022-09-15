class Resolvers::FetchArtist < Resolvers::BaseResolver
  type Types::ArtistType, null: false
  argument :id, ID

  def resolve(id:)
    Artist.find(id)
  end
end