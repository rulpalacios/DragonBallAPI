json.type @season.class.name.downcase.pluralize
json.id @season.id

json.attributes do
	json.description @season.description
	json.episodes @season.episodes
end