class PinDrop < ApplicationRecord
has_many: locations
has_many: pin_drop_reactions
belongs_to: user
end
