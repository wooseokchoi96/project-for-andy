class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def dog
    patient = Patient.find(params[:id])
    @dog = patient.my_dog
  end

  def new
  end

  def edit
  end
end
