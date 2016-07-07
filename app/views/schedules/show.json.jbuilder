json.extract! @message, :id, :member_id, :message, :created_at, :updated_at
json.extract! @schedule, :id, :member_id, :event_start, :event_end, :venue, :created_at, :updated_at
