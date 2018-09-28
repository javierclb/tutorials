#Place as .julia/config/startup.jl. The path to that folder is the first result of running `DEPOT_PATH` in the REPL. 

try
    @eval using Revise
    # Turn on Revise's automatic-evaluation behavior
    Revise.async_steal_repl_backend()
catch err
    @warn "Could not load Revise."
end
