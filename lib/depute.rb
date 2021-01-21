require 'nokogiri'
require 'open-uri'

def scrapper
    doc = Nokogiri::HTML(URI.open('https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&pagnum=575&debut_deputes=400&lang=fr#pagination_deputes'))
end 


def name_last_mail(doc)
    
    all_people = doc.xpath('//*[@id="content"]/div[1]/ul')
    #all_mail = doc.xpath("//*[@id='content']/div[1]/ul[1]/li[5]/a[1]/text()")
    # puts all_people.text
    all_name = []
    all_email = []

    
    all_people.each do |element| 
        name = element.xpath('//ul/li[1]/h2')
        email = element.xpath('//ul/li[5]/a')
        puts  all_name << name.text
        puts all_email << email.text
    end
    all
end


name_last_mail(scrapper)