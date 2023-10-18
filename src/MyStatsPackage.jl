module MyStatsPackage

include("statistic_functions.jl")
include("algebraic_functions.jl")

export rse_sum, rse_mean, rse_std, rse_tstat
export StatResult
export rse_norm

end # module MyStatsPackage