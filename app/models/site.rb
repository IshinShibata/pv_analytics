class Site < ApplicationRecord
    has_many :pvs
    has_many :urls
end
