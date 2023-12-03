class Course < ApplicationRecord

  def to_param
    url.parameterize
  end

end
