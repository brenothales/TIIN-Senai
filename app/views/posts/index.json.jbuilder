json.array!(@posts) do |post|
  json.extract! post, :id, :titulo, :body, :autor, :imagens, :tag
  json.url post_url(post, format: :json)
end
