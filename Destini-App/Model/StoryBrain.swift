
import Foundation

struct StoryBrain {
    
    let stories = [Story(
        title: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
        choice1: "I'll hop in. Thanks for the help!", usergo1: 2,
        choice2: "Better ask him if he's a murderer first.", usergo2: 1
    ),
    Story(
        title: "He nods slowly, unfazed by the question.",
        choice1: "At least he's honest. I'll climb in.", usergo1: 2,
        choice2: "Wait, I know how to change a tire.", usergo2: 3
    ),
    Story(
        title: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
        choice1: "I love Elton John! Hand him the cassette tape.", usergo1: 5,
        choice2: "It's him or me! You take the knife and stab him.", usergo2: 4
    ),
    Story(
        title: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
        choice1: "The", usergo1: 0,
        choice2: "End", usergo2: 0
    ),
    Story(
        title: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
        choice1: "The", usergo1: 0,
        choice2: "End", usergo2: 0
    ),
    Story(
        title: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
        choice1: "The", usergo1: 0,
        choice2: "End", usergo2: 0
    )

]
    
   //MARK: - change namberStory relative to which button the user pressed, we use this function in ViewController
    
    var namberStory = 0
    
    mutating func nextStory(userkind: String) {
       
        if userkind == stories[namberStory].choice1 {
         namberStory = stories[namberStory].usergo1
            
        } else if userkind == stories[namberStory].choice2 {
           namberStory = stories[namberStory].usergo2
        }
    }
    
    //MARK: - Send to the ViewController label text and button1, button2 text.
    
    func labelText() -> String {
        
        return stories[namberStory].title
    }
    
    func button1Text() -> String {
        
        return stories[namberStory].choice1
    }
    
    func button2Text() -> String {
        
        return stories[namberStory].choice2
    }
    
}
