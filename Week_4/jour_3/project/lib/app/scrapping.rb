class Scrapping

def get_urls # gets the url of each city and returns them in an array
    url = 'http://annuaire-des-mairies.com/val-d-oise.html'
    page = Nokogiri::HTML(URI.open(url))
    city_urls = []
    city_listings = page.css('a.lientxt') #city_listings.count => 185 | we get an array af 185 elements
    city_listings.each do |city_listing|
      url = "http://annuaire-des-mairies.com" + (city_listing.attributes["href"].value)[1..-1]
      city_urls << url
    end
    return city_urls#[0..6]
  end

  def mairie_xmas
    city_names_and_emails = []
    city_urls = get_urls # calls get_urls method above
    nb_of_cities = city_urls.size
    city_urls.each_with_index do |city_url , index|
      url = city_url
      page = Nokogiri::HTML(URI.open(url))
      name = url[35..-6].upcase
      email = page.css('tbody')[0].css('td')[7].text
      name_and_email = {name => email}
      city_names_and_emails << name_and_email
    end
    return city_names_and_emails
  end

  def save_as_json
    File.open("db/scraper_data.json", "w") do |f|
        f.write(JSON.pretty_generate(mairie_xmas))
    end
  end

  def save_as_csv
    CSV.open("db/scraper_data.csv", "w") do |csv|
      mairie_xmas.each do |h|
        csv << h.values
      end
    end
  end

end