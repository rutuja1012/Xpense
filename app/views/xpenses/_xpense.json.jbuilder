json.extract! xpense, :id, :name, :amount, :created_at, :updated_at
json.url xpense_url(xpense, format: :json)