# Deno.jl

This package allows downloading deno via the [artifacts system](https://docs.julialang.org/en/v1/stdlib/Artifacts/#Artifacts) of Julia.

## Usage

`Deno.jl` exports only a single function which returns the location of the deno executable.

```julia
julia> import Deno

julia> run(Deno.deno_cmd())
Deno 1.9.2
exit using ctrl+d or close()
>
```

## Aknowledgement

 - Deno.jl is heavily inspired by [NodeJS.jl](https://github.com/davidanthoff/NodeJS.jl)
