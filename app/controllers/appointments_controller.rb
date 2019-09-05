class AppointmentsController < ApplicationController
  def show
    @appointment = Appointment.find(params[:id])
  end

  def new
    @appointment = Appointment.new
    @doctors = Doctor.all
    @patients = Patient.all
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      redirect_to appointment_path(@appointment)
    else
      @doctors = Doctor.all
      @patients = Patient.all
      flash.now[:messages] = @appointment.errors.full_messages
      render :new
    end
  end

  def edit
    @appointment = Appointment.find(params[:id])
    @doctors = Doctor.all
    @patients = Patient.all
  end

  def update
    @appointment = Appointment.find(params[:id])
    @appointment.update(appointment_params)
    if @appointment.save
      redirect_to appointment_path(@appointment)
    else
      @doctors = Doctor.all
      @patients = Patient.all
      flash.now[:messages] = @appointment.errors.full_messages
      render :edit
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:doctor_id, :patient_id, :description, :date)
  end
end
