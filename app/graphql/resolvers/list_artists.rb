class Resolvers::ListArtists < Resolvers::BaseResolver
  type [Types::ArtistType], null: false

  def resolve
    Artist.all.order(created_at: :desc)
  end
end