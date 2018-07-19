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
benchmarks["squaring"] = @benchmarkable foo.($(rand(100))) See below for meaning of $
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

Saving can be done via `BenchmarkTools.save("filename.json", "results")`. This will define a `JSON` file, 
which can be read using `BenchmarkTools.load()`. 

To compare, use the following workflow:

```julia
julia> old = BenchmarkTools.load("oldresults.json")[1]
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