using Test
using Suppressor

include("3_nucleotide-count.jl")

@testset "Nucleotide Count" begin
  test = @capture_out nucleotide_count("ACG")
  @test test == "'A': 1, 'C': 1, 'G': 1, 'T': 0\n"

  test = @capture_out nucleotide_count("ATT")
  @test test == "'A': 1, 'C': 0, 'G': 0, 'T': 2\n"

  test = @capture_out nucleotide_count("AGO")
  @test test == "error"
end

println()
