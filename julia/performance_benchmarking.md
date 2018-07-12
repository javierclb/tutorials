- [Performance and Benchmarking](#performance-and-benchmarking)
    - [Classic Example (and the Trickiness of Generic Programming)](#classic-example-and-the-trickiness-of-generic-programming)
    - [Some Principles](#some-principles)
    - [Packages, Tools, and References for Julia Performance](#packages-tools-and-references-for-julia-performance)
    - [Bechmarking](#bechmarking)

# Performance and Benchmarking
Julia code *can* be extremely fast, but isn't necessarily fast if you make "mistakes". Most of the mistakes involve making the compiler mix and match types which it isn't necessary.

## Classic Example (and the Trickiness of Generic Programming)
A [classic example](https://docs.julialang.org/en/latest/manual/performance-tips/#Write-%22type-stable%22-functions-1) is the seemingly innocuous function returning zero if a value is negative
```julia
using BenchmarkTools
pos(x) = x < 0 ? 0 : x
```
What is wrong with it?  Nothing if you call it with an integer, which returns an `Int64`,
```
pos_1(1) # no problem, returns an Int64
```
But what if you pass it a floating point number?
```julia
pos_1(1.0) #Returns 1.0, a Float64
pos_1(-1.0) #Returns 0, an Int64

pos_2(x) = x < 0.0 ? 0.0 : x #Note the subtle difference
pos_2(-1.0) #Now returns a Float64

#But now what happens when I use an Int64?
pos_2(-1) #Returns 0.0, a Float64!
```
But the issues is that the new `pos_2` function works well for `Float64` but not `Int64`.  How to get them both working?  Generic programming with the `zero`, which gives the **additive identity** for whatever the type of `x` is.
```julia
pos(x) = x < zero(x) ? zero(x) : x #or f(x) = x < zero(typeof(x)) ? zero(typeof(x)) : x
```



Performance is always measured with benchmarking tools,
```julia
julia> @btime f(1)
  1.499 ns (0 allocations: 0 bytes)
1

julia> @btime f(1.0)
  1.599 ns (0 allocations: 0 bytes)
1.0

julia> @btime f_2(1.0)
  1.499 ns (0 allocations: 0 bytes)
1.0
```

## Some Principles
These notes are intended to help guide optimizing code for high performance.  Some key principles about performance in general (and Julia in particular)
1. Don't worry about performance unless you need to.
2. The biggest performance benefits come from better algorithms (e.g. use a solver with derivatives rather than a derviative-free algorithm).  Use external libraries to exploit better algorithms with little work.
3. Start by getting the code correct and as clean as possible rather than worrying too much about performance.
    - Then make sure the unit tests are complete before any tweaking.
    - This is critical to ensure that you don't break anything while tweaking performance
4. You usually do not need to worry about performance, but if you do then use **profiling and benchmarking** rather than guessing.
    - Compilers do crazy (and potentially counter-intuitive) things to achieve performance that you can't guess.
    - Hence it is very difficult to look at code and guess what will be fast and slow.  You could end up 
5. The old "vectorize everything" pattern in Matlab is often the exactly wrong approach for compiled languages
    - Sometimes code that works on vectors is often easier to match to the math in the model.  Sometimes not.  First write the code in the way which is natural
    - After it is working and tested, faster code using comes from converting to loops

6. Rely on external libraries wherever possible, as they are more likely to have many pairs of eyes looking for ways to optimize performance.

## Packages, Tools, and References for Julia Performance
- Key documents are in [Julia Performance Tips](https://docs.julialang.org/en/stable/manual/performance-tips/)
- 

## Bechmarking 