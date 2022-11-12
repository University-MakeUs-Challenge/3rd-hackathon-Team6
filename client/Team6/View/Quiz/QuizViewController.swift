

import UIKit

class QuizViewController: UIViewController {
	
	static let className = "QuizViewController"
	static let identifier = "QuizViewController"
    
    var page = 1
    var currentAnswer = ""
    var answerCount = 0
    var WrongAnswers:[Int] = []

    @IBOutlet weak var navigationBackButton: UIButton!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var quizTitleLabel: UILabel!
    @IBOutlet weak var quizContentsLabel: UILabel!
    
    @IBOutlet weak var choiceOView: UIView!
    @IBOutlet weak var choiceXView: UIView!
    
    @IBOutlet weak var moveNextView: UIView!
    @IBOutlet weak var moveNextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
        self.choiceOView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapChoiceOButton)))
        self.choiceXView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapChoiceXButton)))
        self.moveNextView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapMoveNextButton)))
    }
    
    func configureView(){
        self.progressView.progressViewStyle = .default
        self.progressView.clipsToBounds = true
        self.progressView.layer.cornerRadius = 12
        self.progressView.layer.borderWidth = 0.5
        self.progressView.layer.borderColor = CGColor(red: 83/255, green: 80/255, blue: 80/255, alpha: 1)
        self.progressView.progress = 0
        
        
        self.choiceOView.layer.borderWidth = 1
        self.choiceXView.layer.borderWidth = 1
        self.choiceOView.layer.borderColor = CGColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1)
        self.choiceXView.layer.borderColor = CGColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1)
        self.choiceOView.layer.cornerRadius = 16
        self.choiceXView.layer.cornerRadius = 16
        
        if self.page == quizs.count - 1{
            self.moveNextLabel.text = "결과 보기"
        }
    }
    
    @objc func tapChoiceOButton(){
        self.currentAnswer = "O"
        self.choiceOView.layer.backgroundColor = CGColor(red: 2/255, green: 255/255, blue: 0, alpha: 1)
        self.choiceXView.layer.backgroundColor = .none
        self.choiceOView.layer.borderColor = CGColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        self.choiceXView.layer.borderColor = CGColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1)
    }
    @objc func tapChoiceXButton(){
        self.currentAnswer = "X"
        self.choiceXView.layer.backgroundColor = CGColor(red: 2/255, green: 255/255, blue: 0, alpha: 1)
        self.choiceOView.layer.backgroundColor = .none
        self.choiceXView.layer.borderColor = CGColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        self.choiceOView.layer.borderColor = CGColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1)
    }
    @objc func tapMoveNextButton(){
        
        if self.currentAnswer == quizs[self.page - 1].answer{
            self.answerCount += 1
        } else{
            self.WrongAnswers.append(self.page - 1)
        }
        self.page += 1
        if self.page == quizs.count{
            self.moveNextLabel.text = "결과 보기"
        }
        if self.page - 1 == quizs.count{
            guard let viewController = self.storyboard?.instantiateViewController(identifier: QuizResultViewController.identifier) as? QuizResultViewController else {return}
            viewController.score = Int(self.answerCount / quizs.count * 100)
            viewController.score = Int(Float(self.answerCount) / Float(quizs.count) * 100)
            viewController.WrongAnswers = self.WrongAnswers
            self.navigationController?.pushViewController(viewController, animated: true)
        }
        self.choiceOView.layer.backgroundColor = .none
        self.choiceXView.layer.backgroundColor = .none
        self.choiceOView.layer.borderColor = CGColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1)
        self.choiceXView.layer.borderColor = CGColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1)
        self.progressView.setProgress(Float(self.page - 1) / Float(quizs.count), animated: true)
    }
    
    @IBAction func tapNavigationBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
