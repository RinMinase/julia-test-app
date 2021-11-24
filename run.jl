using Revise

function recursive_includet(filename)
  includet(filename)
  for (mod, file) in Revise.included_files
    Revise.track(mod, file)
  end
end

recursive_includet("src/app.jl")
using .App

# TODO:
#   checking for Revise existence,
#   load revise and recursive include if revise exist
#
#   load app.jl only, when revise present
