using Test

include("6_differences-of-squares.jl")

@testset "Difference of Squares" begin
  @test squareOfSums(5) == 225
  @test sumsOfSquares(5) == 55
  @test differenceOfSquares(5) == 170

  @test squareOfSums(2) == 9
  @test sumsOfSquares(2) == 5
  @test differenceOfSquares(2) == 4
end

println()
