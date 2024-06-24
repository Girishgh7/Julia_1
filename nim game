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
