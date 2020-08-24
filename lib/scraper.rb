require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

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
    end
    students
  end

  def self.scrape_profile_page(profile_url)
    doc = Nokogiri::HTML(open(index_url))
    student = Hash.new

    social_media = doc.css("div.social-icon-container a").each do |media|
      url = student.attribute("href")
      students_hash[:twitter_url] = url if url.include?("twitter")


  end

end
