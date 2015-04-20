class String
    define_method(:clock_angle) do
      time = self.split(":")
      hour = time.at(0).to_f
      minute = time.at(1).to_f

      hourAngle = (hour * 30) + (minute * 0.5)
      minuteAngle = minute * 6

      resultingAngle = (hourAngle - minuteAngle)

      if resultingAngle == 360.00
        resultingAngle = 0
      end

      resultingAngle.abs.to_s
    end
end
