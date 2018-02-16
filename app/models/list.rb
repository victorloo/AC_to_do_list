class List < ApplicationRecord
  validate_presence_of: :name, :due_date, :note

end