class String
    define_method(:clock_angle) do
      time = self.split(":")
      hour = time.at(0).to_i
      minute = time.at(1).to_i

      hourAngle = hour * 30
      minuteAngle = minute * 6

      resultingAngle = (hourAngle - minuteAngle)

      if resultingAngle == 360
        resultingAngle = 0
      end

      resultingAngle.to_s
    end
end
