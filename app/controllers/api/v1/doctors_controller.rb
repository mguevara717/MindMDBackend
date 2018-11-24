class Api::V1::DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
    render json: @doctors, status: :accepted
  end

  def show
    @doctor = Doctor.find(params[:id])
    render json: @doctor, status: :found_doctor
  end

  private

  def doctor_params
    params.require(:doctor).permit(:first_name, :middle_name, :last_name, :title,
    :img_url, :gender, :location_slug, :office_name, :accept_new_patients,
    :city, :lat, :lon, :state, :street, :street2, :zip, :phone)
  end

end
