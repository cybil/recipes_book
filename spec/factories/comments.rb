# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  recipe_id  :bigint
#  user_id    :bigint
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_comments_on_recipe_id  (recipe_id)
#  index_comments_on_user_id    (user_id)
#
FactoryBot.define do
  factory :comment do
    
  end
end
