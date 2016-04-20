json.array!(@shortlists) do |shortlist|
  json.extract! shortlist, :id, :user_id, :post_id, :shortlist
  json.url shortlist_url(shortlist, format: :json)
end
