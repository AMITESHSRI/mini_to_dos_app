class ToDo < ActiveRecord::Base
  attr_accessible :date, :desc, :status, :title
  belongs_to :user
end
