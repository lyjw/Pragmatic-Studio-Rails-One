class Project < ActiveRecord::Base

  def expired?
    pledging_ends_on.blank? || pledging_ends_on < Time.now
  end

end
