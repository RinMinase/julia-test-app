using Test

include("2_leap.jl")

@testset "Leap Year" begin
  @test isLeapYear(1900) == false
  @test isLeapYear(1920) == true
  @test isLeapYear(2000) == true
  @test isLeapYear(2001) == false
  @test isLeapYear(2100) == false
end

println()
