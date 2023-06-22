json.array! @recipes do |recipe|
  json.name recipe.name
  json.description recipe.description
  json.draft recipe.draft
end