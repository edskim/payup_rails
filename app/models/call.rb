class Call < ActiveRecord::Base
  attr_accessible :amount, :date, :name, :requester, :number
end
