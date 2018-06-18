namespace :search_suggestions do
 desc "Generate search suggestions for listings"
 task :index => :environment do
 	SearchSuggestion.index_listings
 end
end