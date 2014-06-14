class Bike < ActiveRecord::Base
  def grab
    if self.is_available?
      self.update(is_available: false)
    else
      false
    end
  end

  def drop
    if !self.is_available?
      self.update(is_available: true)
    else
      false
    end
  end
end
