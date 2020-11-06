require 'watir'
require 'nokogiri'

  def scraping_farmalisto
    url = "https://www.farmalisto.com.mx/dolor-y-malestar-general/3630-comprar-tempra-forte-650-mg-caja-con-24-tabletas-precio-7501095452505-bristol-myers-squibb.html"
    puts "Loading: #{url}"
    browser = Watir::Browser.new(:chrome)
    browser.goto(url)
    all_li = browser.div(class: 'page-width h-100 container').text
    p all_li
    browser.close
  end

puts scraping_farmalisto
