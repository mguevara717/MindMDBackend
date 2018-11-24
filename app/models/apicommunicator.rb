require 'rest-client'
require 'json'
require 'pry'

class ApiCommunicator

  def get_response_hash(url)
    response_string = RestClient.get(url)
    response_hash = JSON.parse(response_string)
  end

  def get_school_data
    doctor_data_url = "https://api.betterdoctor.com/2016-03-01/doctors?query=depression&skip=0&limit=30&user_key=21802ea0d6d2c565488582088e578a6c"
    data_hash = get_response_hash(doctor_data_url)
  end
end

doctors = ApiCommunicator.new.get_school_data

puts doctors
