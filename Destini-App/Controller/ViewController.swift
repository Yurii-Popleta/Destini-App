
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    
  var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }
   
    @IBAction func choiceMade(_ sender: UIButton) {
    
        let userChose = sender.currentTitle!
        
        storyBrain.nextStory(userkind: userChose)
    
        updateUI()
    }
    
    //MARK: - Update Label and two buttons text on the screen
    
    func updateUI() {
        storyLabel.text = storyBrain.labelText()
        choice1Button.setTitle(storyBrain.button1Text(), for: .normal)
        choice2Button.setTitle(storyBrain.button2Text(), for: .normal)
        
    }

}

