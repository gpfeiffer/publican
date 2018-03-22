class Publication < ActiveRecord::Base
  def short
    "#{author}: #{title}. #{data}"
  end
end
