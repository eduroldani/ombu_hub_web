class Course < ApplicationRecord

  def to_param
    title.parameterize
  end

end
