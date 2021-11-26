export Clock

struct Clock
  minutes::Integer

  function Clock(hours::Integer, minutes::Integer)
    totalMinutes = 60 * hours + minutes
    dailyMinutes = 24 * 60

    while totalMinutes < 0
      totalMinutes += dailyMinutes
    end

    return new(totalMinutes % dailyMinutes)
  end

  function Base.:+(clk::Clock, minute::Integer)
    return Clock(0, clk.minutes + minute)
  end

  function Base.:-(clk::Clock, minute::Integer)
    return Clock(0, clk.minutes - minute)
  end

  function Base.show(io::IO, clk::Clock)
    hr = floor(Int, clk.minutes / 60)
    min = floor(Int, clk.minutes % 60)

    paddedHours = lpad(string(hr), 2, '0')
    paddedMinutes = lpad(string(min), 2, '0')

    print(io, "$paddedHours:$paddedMinutes")
  end
end
