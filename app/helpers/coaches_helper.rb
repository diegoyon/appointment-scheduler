module CoachesHelper
  def day_times(day, appointments)
    # appointments.each do |appointment| 
    #   # if appointment.day == "Monday"
    #     appointment.time 
    #   # end 
    # end
    res = []

    appointments.each do |appointment|
      if appointment.day == day
        res << appointment.time 
      end 
    end

    res
  end
end
