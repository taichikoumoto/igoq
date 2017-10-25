# frozen_string_literal: true

json.extract! phone, :id, :created_at, :updated_at
json.url phone_url(phone, format: :json)
