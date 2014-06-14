class Bike < ActiveRecord::Base
  has_many :rentals
  has_many :users, through: :rentals

  def grab
    if self.is_available?
      self.update(is_available: false)
    else
      false
    end
  end

  def drop
    if !self.is_available?
      user = User.first
      rental = user.rental
      rental.update(drop_off_date: DateTime.now)
      self.update(is_available: true)
    else
      false
    end
  end
end
