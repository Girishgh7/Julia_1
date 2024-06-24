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
