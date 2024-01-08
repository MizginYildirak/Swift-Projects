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
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let correntAnswer = quizBrain.checkAnswer(userAnswer!)
        
        if (userAnswer != nil) == correntAnswer {
                  sender.backgroundColor = UIColor.green
            print("doru")
              } else {
                  sender.backgroundColor = UIColor.red
                  print("yanlış")
              }

        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        questionLabel.text = quizBrain.getQuestionText()
        
        let answerChoices = quizBrain.getAnswerChoices()
        
        firstChoice.setTitle(answerChoices[0] as? String, for: .normal)
        secondChoice.setTitle(answerChoices[1] as? String, for: .normal)
        thirdChoice.setTitle(answerChoices[2] as? String, for: .normal)
        
        progressBar.progress = quizBrain.getProgress()
        
        firstChoice.backgroundColor = UIColor.clear
        secondChoice.backgroundColor = UIColor.clear
        thirdChoice.backgroundColor = UIColor.clear
    }
}
