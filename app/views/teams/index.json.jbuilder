json.array!(@teams) do |team|
  json.extract! team, :id, :name, :club_id, :division_id
  json.url team_url(team, format: :json)
end
