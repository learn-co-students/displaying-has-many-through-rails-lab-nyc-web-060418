class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def parse_date_time
    self.appointment_datetime.strftime("%B %-d, %Y at %l:%M")
  end

  def parse_date_time_24hr
    self.appointment_datetime.strftime("%B %-d, %Y at %H:%M")
  end
end
