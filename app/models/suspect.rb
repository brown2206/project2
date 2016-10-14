class Suspect < ApplicationRecord
  default_scope { order('updated_at DESC') }
  belongs_to :tip
end
