json.extract! customer, :id, :email_address, :has_purchased, :has_email_consent, :name, :created_at, :updated_at
json.url customer_url(customer, format: :json)
