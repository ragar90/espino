class Volunteer < ApplicationRecord
  enum type: {
    host: "HOST",
    realocator: "REALOCATOR"
  }

  def is_host?
    self.type == Volunteer.types[:host]
  end

  def is_realocator?
    self.type == Volunteer.types[:realocator]
  end
end
