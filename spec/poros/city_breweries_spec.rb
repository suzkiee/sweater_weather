require "rails_helper"

RSpec.describe CityBreweriesDetails do
  describe 'class methods' do
    describe '::initialize' do
      it 'creates city breweries details object' do
        details = {
            destination: "boston, ma",
            forecast: {
              temperature: 292.55,
              conditions: "overcast clouds"
            }, 
           breweries: [
              {
                  "id": 20506,
                  "obdb_id": "mescan-brewery-kilsallagh",
                  "name": "Mescan Brewery",
                  "brewery_type": "micro",
                  "street": "Cartoor",
                  "address_2": null,
                  "address_3": null,
                  "city": "Kilsallagh",
                  "state": null,
                  "county_province": "Mayo",
                  "postal_code": "F28 FW70",
                  "country": "Ireland",
                  "longitude": "9.73047",
                  "latitude": "53.7471934",
                  "phone": "3.53868E+11",
                  "website_url": "https://www.mescanbrewery.com/",
                  "updated_at": "2021-03-26T00:00:00.000Z",
                  "created_at": "2021-03-26T00:00:00.000Z"
              },
              {
                  "id": 11828,
                  "obdb_id": "jaw-brew-milngavie",
                  "name": "Jaw Brew",
                  "brewery_type": "micro",
                  "street": "26 Crossveggate",
                  "address_2": null,
                  "address_3": null,
                  "city": "Milngavie",
                  "state": null,
                  "county_province": "East Dunbartonshire",
                  "postal_code": "G62 6RA",
                  "country": "Scotland",
                  "longitude": "55.9408943",
                  "latitude": "-4.3131808",
                  "phone": "7880690995",
                  "website_url": "https://www.jawbrew.co.uk/",
                  "updated_at": "2020-10-15T00:00:00.000Z",
                  "created_at": "2020-10-15T00:00:00.000Z"
              },
              {
                  "id": 12100,
                  "obdb_id": "late-night-hype-brewing-co-clydebank",
                  "name": "Late Night Hype Brewing Co",
                  "brewery_type": "micro",
                  "street": "Unit 17",
                  "address_2": "Andrew Court",
                  "address_3": "South Douglas Streeet",
                  "city": "Clydebank",
                  "state": null,
                  "county_province": "West Dunbartonshire",
                  "postal_code": "G81 1PD",
                  "country": "Scotland",
                  "longitude": "55.8959515",
                  "latitude": "-4.4023283",
                  "phone": "1412611278",
                  "website_url": "http://www.latenighthypebrewing.com/",
                  "updated_at": "2020-10-15T00:00:00.000Z",
                  "created_at": "2020-10-15T00:00:00.000Z"
              },
              {
                  "id": 12256,
                  "obdb_id": "loch-lomond-brewery-dumbarton",
                  "name": "Loch Lomond Brewery",
                  "brewery_type": "micro",
                  "street": "Block 2 Unit 11",
                  "address_2": "Vale of Leven Industrial Estate",
                  "address_3": null,
                  "city": "Dumbarton",
                  "state": null,
                  "county_province": "West Dunbartonshire",
                  "postal_code": "G82 3PD",
                  "country": "Scotland",
                  "longitude": "55.969774",
                  "latitude": "-4.576255",
                  "phone": "1389755698",
                  "website_url": "https://www.lochlomondbrewery.com/",
                  "updated_at": "2020-10-15T00:00:00.000Z",
                  "created_at": "2020-10-15T00:00:00.000Z"
              },
              {
                  "id": 12160,
                  "obdb_id": "lennox-brewery-dumbarton",
                  "name": "Lennox Brewery",
                  "brewery_type": "micro",
                  "street": "25 Lime Road",
                  "address_2": "Broadmeadow Industrial Estate",
                  "address_3": null,
                  "city": "Dumbarton",
                  "state": null,
                  "county_province": "West Dunbartonshire",
                  "postal_code": "G82 2RP",
                  "country": "Scotland",
                  "longitude": "55.9478947",
                  "latitude": "-4.5708885",
                  "phone": "1389298642",
                  "website_url": "https://www.lennoxbrewery.com/",
                  "updated_at": "2020-10-15T00:00:00.000Z",
                  "created_at": "2020-10-15T00:00:00.000Z"
              },
              {
                  "id": 10901,
                  "obdb_id": "fyne-ales-cairndow",
                  "name": "Fyne Ales",
                  "brewery_type": "micro",
                  "street": "Achadunan",
                  "address_2": null,
                  "address_3": null,
                  "city": "Cairndow",
                  "state": null,
                  "county_province": "Argyll",
                  "postal_code": "PA26 8BJ",
                  "country": "Scotland",
                  "longitude": "56.2761719",
                  "latitude": "-4.9139856",
                  "phone": "1499600120",
                  "website_url": "https://www.fyneales.com/",
                  "updated_at": "2020-10-23T00:00:00.000Z",
                  "created_at": "2020-10-23T00:00:00.000Z"
              },
              {
                  "id": 9494,
                  "obdb_id": "bute-brew-co-isle-of-bute",
                  "name": "Bute Brew Co",
                  "brewery_type": "closed",
                  "street": "15-17 Columshill Street",
                  "address_2": "Rothesay",
                  "address_3": null,
                  "city": "Isle of Bute",
                  "state": null,
                  "county_province": "Bute",
                  "postal_code": "PA20 0DN",
                  "country": "Scotland",
                  "longitude": "55.835396",
                  "latitude": "-5.058482",
                  "phone": "1700504206",
                  "website_url": "http://butebrewco.co.uk/",
                  "updated_at": "2020-10-23T00:00:00.000Z",
                  "created_at": "2020-10-23T00:00:00.000Z"
              },
              {
                  "id": 13063,
                  "obdb_id": "oban-bay-oban",
                  "name": "Oban Bay",
                  "brewery_type": "micro",
                  "street": "60 George Street",
                  "address_2": null,
                  "address_3": null,
                  "city": "Oban",
                  "state": null,
                  "county_province": "Argyll",
                  "postal_code": "PA34 5SD",
                  "country": "Scotland",
                  "longitude": "56.4146637",
                  "latitude": "-5.4725942",
                  "phone": "1631564492",
                  "website_url": "http://obanbaybrewery.co.uk/",
                  "updated_at": "2020-10-23T00:00:00.000Z",
                  "created_at": "2020-10-23T00:00:00.000Z"
              },
              {
                  "id": 9808,
                  "obdb_id": "colonsay-ales-isle-of-colonsay",
                  "name": "Colonsay Ales",
                  "brewery_type": "micro",
                  "street": "Colonsay Brewery",
                  "address_2": "Dunoran",
                  "address_3": "Scalasaig",
                  "city": "Isle of Colonsay",
                  "state": null,
                  "county_province": "Argyll",
                  "postal_code": "PA61 7YZ",
                  "country": "Scotland",
                  "longitude": "56.0703454",
                  "latitude": "-6.2600129",
                  "phone": "1951200190",
                  "website_url": "https://colonsaybrewery.co.uk/",
                  "updated_at": "2020-10-23T00:00:00.000Z",
                  "created_at": "2020-10-23T00:00:00.000Z"
              },
              {
                  "id": 11783,
                  "obdb_id": "islay-ales-isle-of-islay",
                  "name": "Islay Ales",
                  "brewery_type": "micro",
                  "street": "Islay House Square",
                  "address_2": "Bridgend",
                  "address_3": null,
                  "city": "Isle of Islay",
                  "state": null,
                  "county_province": "Argyll",
                  "postal_code": "PA44 7NZ",
                  "country": "Scotland",
                  "longitude": "55.7845598",
                  "latitude": "-6.2511858",
                  "phone": "1496810014",
                  "website_url": "https://www.islayales.com/",
                  "updated_at": "2020-10-23T00:00:00.000Z",
                  "created_at": "2020-10-23T00:00:00.000Z"
              },
              {
                  "id": 13992,
                  "obdb_id": "rother-valley-brewing-rye",
                  "name": "Rother Valley Brewing Company",
                  "brewery_type": "micro",
                  "street": "Station Road",
                  "address_2": null,
                  "address_3": null,
                  "city": "Rye",
                  "state": null,
                  "county_province": "East Sussex",
                  "postal_code": "TN31 6QT",
                  "country": "England",
                  "longitude": "0.613983",
                  "latitude": "51.008565",
                  "phone": "1797252922",
                  "website_url": "www.rothervalleybrewery.co.uk",
                  "updated_at": "2020-12-30T00:00:00.000Z",
                  "created_at": "2020-12-30T00:00:00.000Z"
              },
              {
                  "id": 15107,
                  "obdb_id": "three-legs-brewing-rye",
                  "name": "The Three Legs Brewing Co",
                  "brewery_type": "taproom",
                  "street": "Udimore Road",
                  "address_2": null,
                  "address_3": null,
                  "city": "Rye",
                  "state": null,
                  "county_province": "East Sussex",
                  "postal_code": "TN31 6BX",
                  "country": "England",
                  "longitude": "0.611331",
                  "latitude": "50.945341",
                  "phone": "7939997622",
                  "website_url": "http://www.thethreelegs.co.uk/",
                  "updated_at": "2020-12-30T00:00:00.000Z",
                  "created_at": "2020-12-30T00:00:00.000Z"
              },
              {
                  "id": 10635,
                  "obdb_id": "filo-brewing-hastings",
                  "name": "The FILO Brewing Co Ltd",
                  "brewery_type": "micro",
                  "street": "Old London Road",
                  "address_2": null,
                  "address_3": null,
                  "city": "Hastings",
                  "state": null,
                  "county_province": "East Sussex",
                  "postal_code": "TN34 3HA",
                  "country": "England",
                  "longitude": "0.596217",
                  "latitude": "50.860814",
                  "phone": "1424420212",
                  "website_url": "http://www.filobrewing.co.uk/",
                  "updated_at": "2020-12-30T00:00:00.000Z",
                  "created_at": "2020-12-30T00:00:00.000Z"
              },
              {
                  "id": 9296,
                  "obdb_id": "brewing-brothers-hastings",
                  "name": "Brewing Brothers Ltd",
                  "brewery_type": "brewpub",
                  "street": "Queens Road",
                  "address_2": null,
                  "address_3": null,
                  "city": "Hastings",
                  "state": null,
                  "county_province": "East Sussex",
                  "postal_code": "TN34 1RL",
                  "country": "England",
                  "longitude": "0.584234",
                  "latitude": "50.860013",
                  "phone": "7985505810",
                  "website_url": "https://brewingbrothers.org/",
                  "updated_at": "2020-12-30T00:00:00.000Z",
                  "created_at": "2020-12-30T00:00:00.000Z"
              },
              {
                  "id": 8697,
                  "obdb_id": "battle-brewery-battle",
                  "name": "Battle Brewery",
                  "brewery_type": "micro",
                  "street": "North Trade Road",
                  "address_2": null,
                  "address_3": null,
                  "city": "Battle",
                  "state": null,
                  "county_province": "East Sussex",
                  "postal_code": "TN33 0HN",
                  "country": "England",
                  "longitude": "0.457425",
                  "latitude": "50.916346",
                  "phone": "1424772838",
                  "website_url": "http://battlebrewery.co.uk/",
                  "updated_at": "2020-12-30T00:00:00.000Z",
                  "created_at": "2020-12-30T00:00:00.000Z"
              },
              {
                  "id": 10897,
                  "obdb_id": "furnace-brook-brewery-hailsham",
                  "name": "Furnace Brook Brewery",
                  "brewery_type": "micro",
                  "street": "Trolliloes Lane",
                  "address_2": null,
                  "address_3": null,
                  "city": "Hailshame",
                  "state": null,
                  "county_province": "East Sussex",
                  "postal_code": "BN27 4QR",
                  "country": "England",
                  "longitude": "0.318049",
                  "latitude": "50.912028",
                  "phone": "1435830835",
                  "website_url": "http://www.quaffale.org.uk/php/brewery/3553",
                  "updated_at": "2020-12-30T00:00:00.000Z",
                  "created_at": "2020-12-30T00:00:00.000Z"
              },
              {
                  "id": 11028,
                  "obdb_id": "good-things-brewing-tunbridge-wells",
                  "name": "Good Things Brewing Co Ltd",
                  "brewery_type": "micro",
                  "street": "Sandhill Lane",
                  "address_2": null,
                  "address_3": null,
                  "city": "Tunbridge Wells",
                  "state": null,
                  "county_province": "East Sussex",
                  "postal_code": "TN3 9LP",
                  "country": "England",
                  "longitude": "0.204763",
                  "latitude": "51.075834",
                  "phone": "1892249012",
                  "website_url": "https://goodthingsbrewing.co/",
                  "updated_at": "2020-12-30T00:00:00.000Z",
                  "created_at": "2020-12-30T00:00:00.000Z"
              },
              {
                  "id": 11267,
                  "obdb_id": "gun-brewery-heathfield",
                  "name": "Gun Brewery Ltd",
                  "brewery_type": "micro",
                  "street": "Gun Hill",
                  "address_2": null,
                  "address_3": null,
                  "city": "Heathfield",
                  "state": null,
                  "county_province": "East Sussex",
                  "postal_code": "TN21 0JY",
                  "country": "England",
                  "longitude": "0.222494",
                  "latitude": "50.899245",
                  "phone": "1323700200",
                  "website_url": "https://www.gunbrewery.co.uk/",
                  "updated_at": "2020-12-30T00:00:00.000Z",
                  "created_at": "2020-12-30T00:00:00.000Z"
              },
              {
                  "id": 8768,
                  "obdb_id": "beer-me-brewery-eastbourne",
                  "name": "Beer Me Brewery",
                  "brewery_type": "brewpub",
                  "street": "Grand Parade",
                  "address_2": null,
                  "address_3": null,
                  "city": "Eastbourne",
                  "state": null,
                  "county_province": "East Sussex",
                  "postal_code": "BN21 3YN",
                  "country": "England",
                  "longitude": "0.291598",
                  "latitude": "50.767006",
                  "phone": "1323729967",
                  "website_url": "https://beermebrewery.co.uk/",
                  "updated_at": "2020-12-30T00:00:00.000Z",
                  "created_at": "2020-12-30T00:00:00.000Z"
              },
              {
                  "id": 10472,
                  "obdb_id": "engineer-brewery-uckfield",
                  "name": "The Engineer Brewery",
                  "brewery_type": "micro",
                  "street": "Burnt Oak Road",
                  "address_2": null,
                  "address_3": null,
                  "city": "Uckfield",
                  "state": null,
                  "county_province": "East Sussex",
                  "postal_code": "TN22 4AE",
                  "country": "England",
                  "longitude": "0.135118",
                  "latitude": "51.019254",
                  "phone": "7841669096",
                  "website_url": "http://theengineerbrewery.co.uk/",
                  "updated_at": "2020-12-30T00:00:00.000Z",
                  "created_at": "2020-12-30T00:00:00.000Z"
              }
          ]
        }


        cbd = CityBreweriesDetails(details) 

        expect(cbd).to be_a(CityBreweriesDetails)
        expect(cbd.destination).to eq("boston, ma")
        expect(cbd.forecast).to be_a(Hash)
        expect(cbd.breweries.count).to eq(10)
      end
    end
  end
end