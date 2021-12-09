using Test

include("1_hello-world.jl")

@testset "Hello World" begin
  @test hello_world() == "Hello world!"
end
