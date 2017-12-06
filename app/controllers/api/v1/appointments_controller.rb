class Api::V1::AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all
    render json: @appointments
  end

  def create
    @appointment = Appointment.create(appointment_params)
    render json: @appointment
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
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
  end


  private

  def appointment_params
    params.require(:appointment).permit(:dog_id, :user_id, :day, :name, :photo, :cost)
  end

end
