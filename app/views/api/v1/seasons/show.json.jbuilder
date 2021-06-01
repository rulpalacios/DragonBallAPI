json.id @season.id
json.name @season.name

json.current do
	json.description @season.description
  	json.episodes @season.episodes
end