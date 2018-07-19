# Benchmark Regression Testing
This is intended to describes ways to ensure that there are no performance regresions in code (i.e., changes in the code that still pass the regression test, but have major performance differences).

## Defining a BenchmarkGroup 

First, create an empty `BenchmarkGroup` object: 

```julia
benchmarks = BenchmarkGroup()
```

This is a kind of dictionary you can fill with specific benchmarks; e.g. 

```julia 
foo(x) = x^2 

srand(1234) # Seed the random number generator, so the results are deterministic. 
benchmarks["squaring"] = @benchmarkable foo.($(rand(100))) #See below for meaning of $
benchmarks["integer"] = @benchmarkable foo.($(rand(1:1000, 400)))
```

:warning: Make sure you always interpolate outside functions and variables using `$(blahblah)`. 

## Getting and Simplifying Results 

Get the results using: 

```julia
results = run(benchmarks)
```

The results will be filled with `Trial` objects, which usually have more data than we need. So
you can run some sample statistics; e.g. 

```julia
julia> medians = median(results)
2-element BenchmarkTools.BenchmarkGroup:
  tags: []
  "integer" => TrialEstimate(271.113 ns)
  "squaring" => TrialEstimate(265.201 ns)

julia> medians["squaring"]
BenchmarkTools.TrialEstimate: 
  time:             265.201 ns
  gctime:           0.000 ns (0.00%)
  memory:           1.75 KiB
  allocs:           2
```

## Comparing and Saving Results 

Saving can be done via `BenchmarkTools.save("benchmarks.json", "results")`. This will define a `JSON` file, 
which can be read using `BenchmarkTools.load()`. 

To compare, use the following workflow:

```julia
julia> old = BenchmarkTools.load("benchmarks.json")[1]
julia> new = medians
julia> judge(old, new)

julia> judge(old, medians)
2-element BenchmarkTools.BenchmarkGroup:
  tags: []
  "integer" => TrialJudgement(+0.00% => invariant)
  "squaring" => TrialJudgement(+0.00% => invariant)
```

For more granular information, you can inspect each field: 

```julia
julia> judge(old, medians)["integer"]
BenchmarkTools.TrialJudgement:
  time:   +0.00% => invariant (5.00% tolerance)
  memory: +0.00% => invariant (1.00% tolerance)
```

## Adding Benchmarks to a Package or Project

For consistency, name the `.json` file `benchmarks.json` and have it directly located inside of the packages `/test` folder. Within that folder, create a file called `runbenchmarks.jl` with code such as the following

```julia
# Import dependency. 
using BenchmarkTools 

#Create benchmark group and benchmarks
benchmarks = BenchmarkGroup()
#Put in specific benchmarks
foo(x) = x^2
x = 5.0
benchmarks["squaring"] = @benchmarkable foo($x) #Add in package specific ones.
#...

results = run(benchmarks) # Get results. 
results = median(results) # Condense to median. 

# To save results, manually call in the REPL: BenchmarkTools.save("test/benchmarks.json", results)

#Compare to old results
try
  oldresults= BenchmarkTools.load("test/benchmarks.json")[1]
  judge(oldresults, results)
catch err
  error("Couldn't load file- make sure that you've previously saved results.", err.prefix)
end
```
See [Expectations.jl Tests](https://github.com/econtoolkit/Expectations.jl/tree/master/test) for an example.

:warning: The `test/...` assumes your project is setup in the standard way, and that you followed the 
tutorials (e.g., running from VS Code, whose REPL runs at the package level). YMMV if you are using a 
custom configuration. 