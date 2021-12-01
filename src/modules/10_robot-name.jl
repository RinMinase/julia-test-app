export robot_name

oldNames = []

function robot_name()
  # todo
end

function randomizer()
  letter = Random.randstring('A': 'Z', 1)
  letter2 = Random.randstring('A': 'Z', 1)
  number = Random.rand(100:999)

  return "$letter$letter2$number"
end
