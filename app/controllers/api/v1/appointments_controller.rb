class Api::V1::AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all
    render json: @appointments
  end

  def create
    byebug
    Appointment.create(appointment_params)
    console.log("Done")

  end

  def show
    @appointment = Appointment.find(params[:id])
    render json: @appointment
  end

  def update
    @appointment = Appointment.find(params[:id])
    @appointment.update(appointment_params)
  end

  def destroy

  end

end
