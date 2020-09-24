def change
    add_timestamps :advisor_revenue, default: Time.zone.now
    change_column_default :advisor_revenue, :created_at, from: Time.zone.now, to: nil
    change_column_default :advisor_revenue, :updated_at, from: Time.zone.now, to: nil
end
