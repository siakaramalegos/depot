class Cart < ActiveRecord::Base
  # The existence of line items is dependent on the existence of the cart.  IF we destroy a cart
  # we want rails to also destroy any line items associated with that cart.
  has_many :line_items, dependent: :destroy
end

# == Schema Information
#
# Table name: carts
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
