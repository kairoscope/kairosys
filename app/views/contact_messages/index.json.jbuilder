json.array!(@contact_messages) do |contact_message|
  json.extract! contact_message, :id, :name, :author, :message
  json.url contact_message_url(contact_message, format: :json)
end
