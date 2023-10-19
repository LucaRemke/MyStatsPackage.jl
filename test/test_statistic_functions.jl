@testset "unit test" begin
    @testset "rse_sum" begin
        @test rse_sum(1:36) == 666
        @test rse_sum([1,2,3]) == 6
    end

    @testset "rse_mean" begin
        @test rse_mean(-15:17) == 1
        # provoke an error to see the behaviour
        @test rse_mean(-15:17) == 2
    end
end