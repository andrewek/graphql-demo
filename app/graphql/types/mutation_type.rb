module Types
  class MutationType < Types::BaseObject
    field :create_artist, mutation: Mutations::CreateArtist
    field :update_artist, mutation: Mutations::UpdateArtist
  end
end
