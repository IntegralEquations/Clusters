using Documenter, Clusters

makedocs(
    modules = [Clusters],
    format = Documenter.HTML(; prettyurls = get(ENV, "CI", nothing) == "true"),
    authors = "Luiz M. Faria",
    sitename = "Clusters.jl",
    pages = Any["index.md"]
    # strict = true,
    # clean = true,
    # checkdocs = :exports,
)

deploydocs(
    repo = "github.com/maltezfaria/Clusters.jl.git",
    push_preview = true
)
