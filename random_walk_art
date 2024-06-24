#=
randomwalker(n::Integer)
return 'x' and 'y' coord of a randomwalker of n steps 
Both x and y are arrays
walker starts at coord(0,0)and takes 1 step randomly 
in any direction 
the x and y coord of each steps is recorded in arrays of x and y 
=#

function randomwalk(n::Integer)
    x=[0]
    y=[0]
    for i in 1:n 
        step=rand((-1,1))
        direction=rand(("x","y"))
        if direction=="x"
            push!(x,x[i]+step)
            push!(y,y[i])
        else
            push!(x,x[i])
            push!(y,y[i]+step)
        end
    end 
    return x,y
end 

#=""" Plot genrator from random walk function  """=#

function randomwalkplots(walkers::Integer,step::Integer)
      scene=Scene()
      for i in 1:walkers
         x,y=randomwalk(steps)
         lines(x,y,linewidth=5,color=(rand(RGBf0),0.5))
      end 
      scene
    end
