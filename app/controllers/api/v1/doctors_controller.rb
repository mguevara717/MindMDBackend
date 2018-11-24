class Api::V1::DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
    render json: @doctors, status: :accepted
  end

  def create
    @doctor = Post.create(doctor_params)
    if @doctor.save
      render json: @doctor, status: :created
    else
      render json: {errors: @doctor.errors.full_messages}, status: :error
    end
  end

  def show
    @doctor = Doctor.find(params[:id])
    render json: @doctor, status: :found_doctor
  end

  private

  def doctor_params
    params.require(:doctor).permit(:first_name, :middle_name, :last_name, :title,
    :img_url, :gender, :bio, :location_slug, :office_name, :accept_new_patients,
    :city, :lat, :lon, :state, :street, :street2, :zip, :phone)
  end

end
