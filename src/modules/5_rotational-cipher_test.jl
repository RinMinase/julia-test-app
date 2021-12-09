using Test
using Suppressor

include("5_rotational-cipher.jl")

@testset "Rotational Cipher" begin
  test = rotationalCipher(15, "Test this rotational cipher message")
  @test test == "Jtij jwxi hejpjxedpb rxfwth ctiipvt"

  test = rotationalCipher(26, "Test this rotational cipher message")
  @test test == "Test this rotational cipher message"

  test = rotationalCipher(52, "Test this rotational cipher message")
  @test test == "Test this rotational cipher message"
end

println()
