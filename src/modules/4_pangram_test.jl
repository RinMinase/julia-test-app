using Test
using Suppressor

include("4_pangram.jl")

@testset "Pangram" begin
  test = @capture_out pangram("Not a pangram")
  @test test == "not a pangram"

  test = @capture_out pangram("Fifty six very big jet planes zoomed quickly by the tower")
  @test test == "pangram"

  test = @capture_out pangram("Sphinx of black quartz, judge my vow")
  @test test == "pangram"
end

println()
