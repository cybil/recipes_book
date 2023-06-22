json.array! @comments do |comment|
  json.recipe_id comment.recipe_id
  json.user_id comment.user_id
  json.content comment.content
end