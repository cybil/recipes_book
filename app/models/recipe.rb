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
# <<<<<<< HEAD
	enum status: { pending: 'pending',	validated: 'validated', rejected: 'rejected', aborted: 'aborted' }
# =======
# 	enum :status, [ :pending, :validated, :rejected, :aborted ]

  has_many :comments, class_name: 'Comment'
# >>>>>>> 1eb86b4 (exo 2)
end
