require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    binding.pry

    #html = open(index_url)
    #doc = Nokogiri::HTML(html)
    #names = doc.css(".student-card .card-text-container .student-name")
    #student_name = names.each do |name|
    # => puts name.text
    # end

    #hash = {
    #  name = scraped data,
    #  more = more data
    #}
    #Student.new(hash)
    #name = scraped data
    #more = more data
    #Student.new(name, more)

    #locations = doc.css(".student-card .card-text-container .student-location").text.strip
    #student_location = locations.each do |location|
    # puts location.text
    #end

    #
  end

  def self.scrape_profile_page(profile_url)

  end

end
