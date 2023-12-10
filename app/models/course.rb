class Course < ApplicationRecord
  has_one_attached :photo


  def to_param
    url.parameterize
  end

end
