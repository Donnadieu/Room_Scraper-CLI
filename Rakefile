require_relative './config/environment'

def reload!
  load_all './lib'
end

task :console do
  Pry.start
end

task :scrape_rooms do
  # rochester_scraper = RoomScraper.new('https://rochester.craigslist.org/search/roo')
  # rochester_scraper.call
  rochester_scraper = RoomScraper.new('https://chicago.craigslist.org/search/roo')
  rochester_scraper.call
  # rochester_scraper = RoomScraper.new('https://newyork.craigslist.org/search/roo')
  # rochester_scraper.call


end
