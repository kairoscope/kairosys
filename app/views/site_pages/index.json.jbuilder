json.array!(@site_pages) do |site_page|
  json.extract! site_page, :id, :title, :content
  json.url site_page_url(site_page, format: :json)
end
