json.extract! payment, :id, :name, :doc_num, :summa, :status, :type, :description, :computation_id, :account_id, :vodokanal_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)
