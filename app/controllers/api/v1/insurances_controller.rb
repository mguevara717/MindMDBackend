class Api::V1::InsurancesController < ApplicationController
  skip_before_action :authorized

  def index
    @insurances = Insurance.all
    render json: @insurances, status: :accepted
  end

  def show
    @insurance = Insurance.find(params[:id])
    render json: @insurance, status: :found_insurance
  end

end
