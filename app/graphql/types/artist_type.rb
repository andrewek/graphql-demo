# # app/graphql/types/profile_type.rb
# class Types::ProfileType < Types::BaseObject
#   field :id, ID, null: false
#   field :name, String, null: false
#   field :avatar, Types::PhotoType
# end

class Types::ArtistType < Types::BaseObject
  field :id, ID, null: false
  field :name, String, null: false
end