using GeometryTypes: Point

function matrix_to_points(v)
    T = eltype(v)
    @assert T <: Real "type must be real"
    m,n = size(v)
    [Point{m,T}(Tuple(v[:,i])) for i=1:size(v,2)]
end

#TODO: make native point type

# struct Point{N,T}
#     coords::NTuple{N,T}
# end

# Point(args...) = Point(promote(args...))

# Base.min(a::Point,b::Point) = Point(min.(a,b))
# Base.max(a::Point,b::Point) = Point(max.(a,b))

# Base.broadcast(*,a::Number,pt::Point) = Point(a.*pt.coords)

# Base.promote_rule(::Type{Point{N,T}},::Type{Point{N,S}}) where {N,T,S} = Point{N,promote_type(T,S)}

# Base.length(pt::Point{N}) where {N} = N
# Base.iterate(pt::Point,args...) = iterate(pt.coords,args...)

# Base.convert(::Type{T},x::NTuple) where {T <: Point} = T(x)
# Base.convert(::Type{T},x::Point) where {T <: Point} = T(x.coords)

# for op in (:+, :-, :min, :max)
#     @eval Base.$op(pt1::Point{N},pt2::Point{N}) where {N} = Point($op.(pt1.coords,pt2.coords))
# end

# Base.:*(a::Number,pt::Point) = Point(a.*pt.coords)

# Base.getindex(pt::Point,i) = getindex(pt.coords,i)


# Base.rand(::Type{Point{N,T}},n::Int) where {N,T} = array_to_points(rand(T,N,n))
