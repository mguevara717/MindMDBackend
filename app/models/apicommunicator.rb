require 'rest-client'
require 'json'
require 'pry'

class ApiCommunicator < ApplicationRecord

  def get_response_hash(url)
    response_string = RestClient.get(url)
    response_hash = JSON.parse(response_string)
  end

  def get_doctor_data
    doctor_data_url = "https://api.betterdoctor.com/2016-03-01/practices?name=depression&skip=0&limit=85&user_key=21802ea0d6d2c565488582088e578a6c"
    data_hash = get_response_hash(doctor_data_url)

    data_hash.each do |key, data|
      if key == "data"
        data.each do |doctor_data|
            doctor_data.each do |key|
              binding.pry
              first_query = Doctor.new(location_slug: key["location_slug"],
                office_name: key["name"],
                accept_new_patients: key["accepts_new_patients"])
                first_query.save
            end
          end
        end
      end
    end
  end

# doctors = ApiCommunicator.new.get_doctor_data
# puts doctors
