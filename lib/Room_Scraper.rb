class RoomScraper

  def initialize(index_url)
    @index_url = index_url
    @doc = Nokogiri::HTML(open(index_url))
  end

  def call
    Room.create_table
    Room.create_from_array(scrape_rows)
  end

  def scrape_rows
    @doc.search("p.result-info").collect do |result|
      {
        :title => result.search("a.result-title.hdrlnk").text,
        :date_created => result.search("time").attribute("datetime").text,
        :price => result.search("span.result-price").text,
        :url => result.search("a.result-title.hdrlnk").attribute("href").text
      }
    end.uniq
  end
end
