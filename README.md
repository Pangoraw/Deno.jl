## :warning: Install `Deno_jll.jl` instead of `Deno.jl`

```julia
(@v1.6)> add Deno_jll
...

julia> using Deno_jll

julia> run(deno())
Deno 1.10.1
exit using ctrl+d or close()
>
```

# Deno.jl

This package allows downloading deno via the [artifacts system](https://docs.julialang.org/en/v1/stdlib/Artifacts/#Artifacts) of Julia.
The actual tarball containing the executable is built in [DenoBuilder](https://github.com/JuliaPluto/DenoBuilder).

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
