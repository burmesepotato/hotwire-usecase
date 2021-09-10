json.extract! applicant, :id, :name, :position, :created_at, :updated_at
json.url applicant_url(applicant, format: :json)
