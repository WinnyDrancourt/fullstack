require 'nokogiri'
require 'open-uri'

url = "https://espace-client.orange.fr/facture-paiement/9096025576/detail-facture"

page = Nokogiri::HTML(URI.open(url))   

allbutton = page.xpath('//*[@id="o-header"]')
