json.array! @recipes do |recipe|
  json.name recipe.name
  json.description recipe.description
  json.draft recipe.draft
  json.status recipe.status
end