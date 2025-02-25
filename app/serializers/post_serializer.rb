class PostSerializer
  include JSONAPI::Serializer
  attributes :title, :content, :created_at, :updated_at
end
