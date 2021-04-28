module Deno

using Pkg.Artifacts
using Base: SHA1

export deno_cmd

function load_artifact(artifact_name)
        artifact_info = artifact_meta(artifact_name, joinpath(@__DIR__, "..", "Artifacts.toml"))
        artifact_info === nothing && return nothing

        return artifact_path(SHA1(artifact_info["git-tree-sha1"]))
end

const deno_path = load_artifact("deno_exe")
const deno_exe_name = Sys.iswindows() ? "deno.exe" : "deno"
const deno_exe_path = deno_path === nothing ? deno_exe_name : joinpath(deno_path, deno_exe_name)

"""
Returns the full path to the deno executable
"""
function deno_cmd()
        return `$deno_exe_path`
end

end
