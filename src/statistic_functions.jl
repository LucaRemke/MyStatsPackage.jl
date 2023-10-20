"""
    rse_sum(myrange)

Returns the sum of a UnitRange

# Arguments

- `myrange` -- The range, which sum should be calculated

# Output

A number representing the sum

# Notes

This function was definied during the Julia Summer School. 

# Examples

```julia-repl
julia> rse_sum(1:3)
6
\```
"""
function rse_sum(range)
    return sum(range)
end;

rse_sum(1:36) == 666

# ---

function rse_mean(range)
    return rse_sum(range) / length(range)
end;

rse_mean(-15:17) == 1

# ---

function rse_std(range)
    vector = collect(range)
    return sqrt(sum((vector .- rse_mean(vector)).^2) / (length(vector) - 1))
end;

rse_std(1:3) == 1

# ---

function rse_tstat(range; σ = rse_std(range))
    return rse_mean(range) / (σ / sqrt(length(range)))
end;

rse_tstat(2:3) == 5

# ---

struct StatResult
    x::UnitRange{Int64}
    n::Int64
    std::Float64
    tvalue::Float64
end;

# ---

function StatResult(range)
    x = range
    n = length(x)
    std = rse_std(x)
    tvalue = rse_tstat(x)
    return StatResult(x, n, std, tvalue)
end;

StatResult(2:10)

