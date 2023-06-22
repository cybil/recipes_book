# == Schema Information
#
# Table name: recipes
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :text
#  draft       :boolean
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null

class Recipe < ApplicationRecord
	enum status: { pending: 'pending',	validated: 'validated', rejected: 'rejected', aborted: 'aborted' }
end
