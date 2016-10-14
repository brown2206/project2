class Tip < ApplicationRecord
  default_scope { order('updated_at DESC') }
  has_many :suspects
end
