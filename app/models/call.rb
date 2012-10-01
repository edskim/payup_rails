class Call < ActiveRecord::Base
  attr_accessible :amount, :due_date, :from_number, :to, :to_number
end
