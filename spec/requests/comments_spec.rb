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
require 'rails_helper'

RSpec.describe "Comments", type: :request do
  describe "GET /index" do
    pending "add some examples (or delete) #{__FILE__}"
  end
end
