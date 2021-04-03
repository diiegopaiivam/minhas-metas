require 'active_support/core_ext/date/calculations'

class Task < ApplicationRecord
    #validates
    validates :name, :presence => true, :uniqueness => true, :length => { maximum: 300}
    validates :description, :presence => true, :length => { maximum: 2000 }
    validates :status, inclusion: { in: [1,2,3] }
    validates :estimative, :presence => true, timeliness: { after: lambda { DateTime.current.to_date }, type: :date }
    validates :value, numericality: { greater_than: 0, less_than: 1000000 }
    validates :priority, inclusion: { in: [1,2,3] }

end
