using Test

include("1_hello-world.jl")

@testset "Hello World Exercise" begin
  @test hello_world() == "Hello world!"
end
