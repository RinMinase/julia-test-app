using Test
using Suppressor

include("7_raindrops.jl")

@testset "Pangram" begin
  test = @capture_out raindrops(30)
  @test test == "PlingPlang"

  test = @capture_out raindrops(28)
  @test test == "Plong"

  test = @capture_out raindrops(34)
  @test test == "34"
end

println()
