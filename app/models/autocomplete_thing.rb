class AutocompleteThing < ApplicationRecord
  scope :name_search, ->(name) {where('name LIKE ?', "%#{sanitize_sql_like(name.present? ? name: '')}%")}
end
