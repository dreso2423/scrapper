require 'watir'
require 'nokogiri'


  eans = [7501033920325,7501033920332]

  def scraping_farmalisto(eans)
  texts = []
    eans.each do |ean|
      url = "https://www.farmalisto.com.mx/#/dffullscreen/query=#{ean}"
      puts "Loading: #{url}"
      browser = Watir::Browser.new(:chrome)
      browser.goto(url)
      first_result_url = browser.div(class: 'df-card').a.href
      #puts first_result_url
      browser.goto(first_result_url)
      all_li = browser.div(class: 'page-width h-100 container').text
      texts << all_li
      browser.close
    end
  return texts
  end

  def load_csv
    CSV.foreach(@csv_file) do |row|
      eans << row[0]
    end
  end

p scraping_farmalisto(eans)

