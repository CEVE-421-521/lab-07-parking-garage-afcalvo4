module ParkingGarage

include("core.jl")
include("sim.jl")

export ParkingGarageSOW, simulate, simulatelevels,
                         simulatebin, simulatelevelsbin,
                         simulate_double,simulatelevels_double,
                         StaticPolicy, AdaptivePolicy

end # module ParkingGarage
