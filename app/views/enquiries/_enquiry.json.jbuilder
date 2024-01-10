json.extract! enquiry, :id, :show, :first_name, :surname, :email, :contact_number, :company, :department, :message, :euca_iot, :created_at, :updated_at
json.url enquiry_url(enquiry, format: :json)
