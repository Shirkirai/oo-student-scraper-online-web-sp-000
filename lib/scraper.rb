require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  #def self.scrape_index_page(index_url)

  #  students_hash = []
  #  html = Nokogiri::HTML(open(index_url))
  #  html.css(".student-card").collect do |student|
  #    students_hash << {
  #      name: student.css("h4.student-name").text,
  #      location: student.css("p.student-location").text,
  #      profile_url: "http://students.learn.co/" + "#{student.css("a").attribute("href")}"
  #    }
#
  #  end
  #  students_hash
  #end
  def self.scrape_index_page(index_url)

  doc = Nokogiri::HTML(open(index_url))
  students = Array.new
  doc.css("div.roster-cards-container").each do |card|
    card.css(".student-card a").each do |student|
      name = student.css(".student-name").text
      location = student.css(".student-location").text
      profile_url = "#{student.attr("href")}"
      students << {name: name, location: location, profile_url: profile_url}
    end
    students
  end



  def self.scrape_profile_page(profile_url)

  end

end
