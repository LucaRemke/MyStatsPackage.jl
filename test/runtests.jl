# load packages
include("setup.jl")

# load tests
@testset "runtests" begin
    include("test_statistic_functions.jl")
end