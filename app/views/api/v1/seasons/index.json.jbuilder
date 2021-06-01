json.seasons @seasons do |season|
	json.id season.id

	json.attributes do
		json.description season.description
	  	json.episodes season.episodes
	end
end
