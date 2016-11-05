
function bubblesort!{T}(x::Array{T}(dims))
 
  for i in 2:length(x)
      for j in 1:length(x)-1
      if x[j] > x[j+1]
          tmp = x[j]
          x[j] = x[j+1]
          x[j+1] = tmp
      end
    end
  end
 
  return x
end
 
 
a = ARGS
println("Before bubblesort:")
println(a)
a = bubblesort!(a)
println("\nAfter bubblesort:")
println(a)
