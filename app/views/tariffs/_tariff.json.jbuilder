json.extract! tariff, :id, :name, :price, :description, :date_start, :status, :created_at, :updated_at
json.url tariff_url(tariff, format: :json)
