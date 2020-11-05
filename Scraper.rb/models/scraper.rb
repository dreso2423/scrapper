require 'watir'
require 'nokogiri'

  def scraping_farmalisto
  # go to url
    url = 'https://www.farmalisto.com.mx/#/dffullscreen/query=epival'
    puts "Loading: #{url}"
    require 'watir'
    browser = Watir::Browser.new(:chrome)
    browser.goto(url)
    first_result = browser.div(class: 'df-card').a.href
    puts first_result
    browser.close
  end
