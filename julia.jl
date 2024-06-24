#=
Computer 🤖🤖
Play nim game :
User goes first julia goes second 
Each player takes 1,2 or 3 tokens ,in turn 
The player who takes the last token is the winner 
Credit:Rosetta Code
=#
function nimgame()
    tokencount=12
    takenum=0
    while true
        while true 
            permitted=collect(1:min(3,tokencount))
            println("\n of the remaining $tokencount tokens,")
            print("how many do you take($permitted)?")
            takenum=parse(Int,readline())
            if takenum in permitted
                break
            end
        end
        tokencount-=4
        println("\n Julia Takes $(4-takenum),")
        println(" so there are $tokencount tokens left.")
        if tokencount<1
            println("\n Julia WINS 🤖🤖")
            break 
        end
    end 
end 

#=
Magic 8 ball 🎱
Return response to the user's yes or no questions 
repeat process as long as user continues to ask questions 
exit if user enters blank 
=#

function magic8ball()
    responses=[
        "It is certain😁"
        "It is decidedly so"
        "Without doubt 😤"
        "You may rely on it🔗"
        "As I see it, yes😲"	
        "It might not be what you expect🤔"	
        "Most likely🤔"		
        "Outlook good🐒"		
        "Yes😃"		
        "Signs point to yes🤞"
        "Reply hazy, try again🤔"
        "Ask again later❓"
        "Better not tell you now🤫"
        "Cannot predict now😕"
        "Concentrate and ask again💭"
        "Don't count on it😖"
        "My reply is no🙅"
        "My sources say no👎"
        "Outlook not so good⛈️"
        "Very doubtful🌈☂️"
    ]
    while true 
        println("Ask a yes/no question (blank to exit):\t")
        if readline()==""
            break
        end 
        println("\n",rand(responses),"\n")
    end
end

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
