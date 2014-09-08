class Biodata < ActiveRecord::Base
  validates :about, presence: true,
                    length: { minimum: 5 }
end

