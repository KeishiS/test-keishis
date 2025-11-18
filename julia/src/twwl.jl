module twwl

using Libdl, Artifacts

const artifact_root = @artifact_str"rs-twwl"
const libtwwl = joinpath(artifact_root, "libtest_keishis." * Libdl.dlext)

function mysum(a::Int, b::Int)::Int
    return ccall((:mysum, libtwwl), Int, (Int, Int), a, b)
end

function hello(str::String)::String
    return "Hello, $(str)!"
end



end
