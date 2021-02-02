class PersonLocation < ApplicationRecord
  belongs_to :location
  belongs_to :person
end
