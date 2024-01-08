import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstChoice: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var secondChoice: UIButton!
    @IBOutlet weak var thirdChoice: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = quizBrain.getQuestionText()
        
        let answerChoices = quizBrain.getAnswerChoices()
        
        firstChoice.setTitle(answerChoices[0] as? String, for: .normal)
        secondChoice.setTitle(answerChoices[1] as? String, for: .normal)
        thirdChoice.setTitle(answerChoices[2] as? String, for: .normal)
        
        progressBar.progress = quizBrain.getProgress()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        _ = sender.currentTitle
        
        quizBrain.nextQuestion()
        updateUI()
    }
}
