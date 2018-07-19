- [Benchmark Regression Testing](#benchmark-regression-testing)
    - [Simple example of a few trials (in separate files)](#simple-example-of-a-few-trials-in-separate-files)
    - [Using and Serializing Benchmark Groups](#using-and-serializing-benchmark-groups)
# Benchmark Regression Testing
This is intended to describes ways to ensure that there are no performance regresions in code (i.e., changes in the code that still pass the regression test, but have major performance differences).

The basic idea is that you can use [BenchmarkTools.jl](https://github.com/JuliaCI/BenchmarkTools.jl) to run benchmarks, save the results as a baseline in Github, and then run a script to compare the results.

For the most part, we want to store `BenchmarkTools.TrialEstimate` in github rather than the entire benchmark, or else the files would be huge.

## Simple example of a few trials (in separate files)
First, lets define a function
```julia
using BenchmarkTools
f(x) = x^2
x0 = 1.0
xvec = [1, 2, 3]

;pwd #Just to see location of files
```
Next, lets say that we wanted to save the benchmarks into a file, choosing the `median` trial.
```julia
#To run and save a single trial for comparison later.
b1 = @benchmark f($x0) #ALWAYS splice, or it could be a global variable
b2 = @benchmark f.($xvec) #ALWAYS splice, or it could be a global variable

#Want to save the median results as a trial
BenchmarkTools.save("t1.json", median(b1))
BenchmarkTools.save("t2.json", median(b2))
```
Later, these files can be loaded and compared with `judge` and `ratio`
```julia
#Later, can load up the original
t1_old = BenchmarkTools.load("t1.json")[1] #Returns a vector
t2_old = BenchmarkTools.load("t2.json")[1]

#And can run and compare
t1 = median(@benchmark f($x0))
judge(ratio(t1, t1_old))
# example output:
#BenchmarkTools.TrialJudgement: 
#  time:   +18.75% => regression (5.00% tolerance)
#  memory: +0.00% => invariant (1.00% tolerance)
```

## Using and Serializing Benchmark Groups

The above is a good approach for "quick and dirty" benchmarks, but sometimes you will need
more persistent or complex suites. That's the idea of this section. 

### Defining a BenchmarkGroup 

First, create an empty `BenchmarkGroup` object: 

```julia
benchmarks = BenchmarkGroup()
```

This is a kind of dictionary you can fill with specific benchmarks; e.g. 

```julia 
foo(x) = x^2 

srand(1234) # Seed the random number generator, so the results are deterministic. 
benchmarks["squaring"] = @benchmarkable foo.(rand(100))
benchmarks["integer"] = @benchmarkable foo.(rand(100))
```

You can also subset the main group with child `BenchmarkGroups()`. 

```julia
benchmarks["child"] = BenchmarkGroup(["somename", "anothername"])
```

The benchmark group located at `benchmarks["child"]` currently has no benchmarks and two names (called tags). To use these
tags to do filtering, simply use the `@tagged` macro (e.g., `benchmarks[@tagged "integer"]`).
 
You can fill these by subsetting one after the other; e.g. `benchmarks["child"]["childbenchmark"] = ...`.

### Tuning, Getting, and Simplifying Results 

You should first run `tune!(benchmarks)`. This will, among other things, get a sense
of how many times to run things to get good results. 

Then, get the results using: 

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

To eliminate all the nesting, use **TBD**. 

### Comparing and Saving Results 

Saving can be done via `BenchmarkTools.save("filename.json", "results")`. This will define a `JSON` file, 
which can be read using `BenchmarkTools.load()`. 

To compare, use the following workflow:

```julia
old = BenchmarkTools.load("oldresults.json")
new = medians
judge(old, new)
```

There is also a function `ratio()`, which takes the ratio of objects in 2 different benchmark groups. These can be judged as well, 
for the same result (i.e., `judge(ratio(old, new)) = judge(old, new)`). 

### Extras 

* If you have a consistent set of parameters, these can be serialized as well; see [the docs](https://github.com/JuliaCI/BenchmarkTools.jl/blob/master/doc/manual.md#caching-parameters).
