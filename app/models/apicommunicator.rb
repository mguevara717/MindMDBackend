require 'net/http'
require 'open-uri'
require 'json'

class ApiCommunicator

URL = "https://api.betterdoctor.com/2016-03-01/doctors?query=depression&skip=0&limit=30&user_key=21802ea0d6d2c565488582088e578a6c"

 def get_doctors
   uri = URI.parse(URL)
   response = Net::HTTP.get_response(uri)
   response.body
 end

end

doctors = ApiCommunicator.new.get_doctors

puts doctors
