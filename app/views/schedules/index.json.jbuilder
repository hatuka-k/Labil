json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :member_id, :event_start, :event_end, :venue
  json.url schedule_url(schedule, format: :json)
end
