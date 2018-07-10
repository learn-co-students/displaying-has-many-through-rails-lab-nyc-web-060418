class AppointmentsController < ApplicationController
  def show
    @appointment = Appointment.find(params[:id])
    @datetime = @appointment.parse_date_time
  end

end
