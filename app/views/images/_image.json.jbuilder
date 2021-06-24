json.extract! image, :id, :path, :rating, :matches, :wins, :losses, :created_at, :updated_at
json.url image_url(image, format: :json)
