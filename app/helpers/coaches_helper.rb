module CoachesHelper
  def day_times(day, appointments)
    all_appointments = []

    appointments.each do |appointment|
      if appointment.day == day
        all_appointments << appointment.time 
      end 
    end

    all_appointments
  end
end
