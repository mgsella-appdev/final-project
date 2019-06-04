# == Schema Information
#
# Table name: favorites
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  category_id :integer
#  recipe_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Favorite < ApplicationRecord
end
