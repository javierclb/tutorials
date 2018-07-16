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
TBD

See https://github.com/JuliaCI/BenchmarkTools.jl/blob/master/doc/manual.md#working-with-trial-data-in-a-benchmarkgroup

https://github.com/JuliaCI/BenchmarkTools.jl/blob/master/test/SerializationTests.jl
I think that the benchmark groups serialize back and forth well with JSON using `load` and `save` as above.