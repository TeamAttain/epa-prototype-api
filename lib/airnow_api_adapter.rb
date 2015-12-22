class AirnowApiAdapter
  include HTTParty
  base_uri 'http://www.airnowapi.org'

  def query_params
    {
      'API_KEY': Rails.application.secrets.air_now_api_key,
      format: "application/json"
    }
  end

  def readings_for(zip_code)
    self.class.get(
      "/aq/observation/zipCode/current",
      query: query_params.merge(
        distance: '25',
        zipCode: zip_code
      )
    )
  end

  def self.observed_zip_codes
    [
      '36101',  # Alabama Ala.  AL  Montgomery
      '99801',  # Alaska  Alaska  AK  Juneau
      '85001',  # Arizona Ariz. AZ  Phoenix
      '72201',  # Arkansas  Ark.  AR  Little Rock
      '94203',  # California  Calif.  CA  Sacramento
      '80201',  # Colorado  Colo. CO  Denver
      '06101',  # Connecticut Conn. CT  Hartford
      '19901',  # Delaware  Del.  DE  Dover
      '32301',  # Florida Fla.  FL  Tallahassee
      '30301',  # Georgia Ga. GA  Atlanta
      '96801',  # Hawaii  Hawaii  HI  Honolulu
      '83701',  # Idaho Idaho ID  Boise
      '62701',  # Illinois  Ill.  IL  Springfield
      '46201',  # Indiana Ind.  IN  Indianapolis
      '50301',  # Iowa  Iowa  IA  Des Moines
      '66601',  # Kansas  Kans. KS  Topeka
      '40601',  # Kentucky  Ky. KY  Frankfort
      '70801',  # Louisiana La. LA  Baton Rouge
      '04330',  # Maine Maine ME  Augusta
      '21401',  # Maryland  Md. MD  Annapolis
      '02108',  # Massachusetts Mass. MA  Boston
      '48901',  # Michigan  Mich. MI  Lansing
      '55101',  # Minnesota Minn . MN  St. Paul
      '39201',  # Mississippi Miss. MS  Jackson
      '65101',  # Missouri  Mo. MO  Jefferson City
      '59601',  # Montana Mont. MT  Helena
      '68501',  # Nebraska  Nebr. NE  Lincoln
      '89701',  # Nevada   Nev.  NV  Carson City
      '03301',  # New Hampshire N .H.  NH  Concord
      '08601',  # New Jersey  N .J.  NJ  Trenton
      '87501',  # New Mexico  N. M.  NM  Santa Fe
      '12201',  # New York  N .Y.  NY  Albany
      '27601',  # North Carolina  N .C.  NC  Raleigh
      '58501',  # North Dakota  N# .D.  ND  Bismarck
      '43201',  # Ohio  Ohio  OH  Columbus
      '73101',  # Oklahoma   Okla. OK  Oklahoma City
      '97301',  # Oregon  Ore.  OR  Salem
      '17101',  # Pennsylvania  Pa. PA  Harrisburg
      '02901',  # Rhode Island  R .I.  RI  Providence
      '29201',  # South Carolina  S .C.  SC  Columbia
      '57501',  # South Dakota  S .D.  SD  Pierre
      '37201',  # Tennessee Tenn. TN  Nashville
      '73301',  # Texas Tex.  TX  Austin
      '84101',  # Utah  Utah  UT  Salt Lake City
      '05601',  # Vermont Vt. VT  Montpelier
      '23218',  # Virginia  Va. VA  Richmond
      '98501',  # Washington  Wash. WA  Olympia
      '25301',  # West Virginia W .Va. WV  Charleston
      '53701',  # Wisconsin Wis.  WI  Madison
      '82001'   # Wyoming Wyo.  WY  Cheyenne
    ]
  end
end
