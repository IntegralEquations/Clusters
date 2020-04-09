Base.@kwdef mutable struct Parameters
    nmax
    splitter
    eta
    admissibility
end

const DEFAULT_PARAMETERS = Parameters(128,                           # nmax
                                      GeometricMinimalSplitter(128), # splitter
                                      3,                             # eta
                                      StrongAdmissibilityStd(3)      # admissibilty
                                      )
