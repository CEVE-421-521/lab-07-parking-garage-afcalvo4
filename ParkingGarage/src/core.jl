@kwdef struct ParkingGarageSOW{F<:AbstractFloat,I<:Int}
    demand_growth_rate::F = 80.0
    n_years::I = 20
    discount_rate::F = 0.12
end

mutable struct ParkingGarageState
    n_levels::Int
    year::Int
end
function ParkingGarageState()
    return ParkingGarageState(0, 1)
end

struct ParkingGarageAction
    Δn_levels::Int
end

abstract type AbstractPolicy end
struct StaticPolicy <: AbstractPolicy
    n_levels::Int
end
struct AdaptivePolicy <: AbstractPolicy
    n_levels_init::Int
end