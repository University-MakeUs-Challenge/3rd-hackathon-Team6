//
//  QuizResultViewController.swift
//  Team6
//
//  Created by User on 2022/11/13.
//

import UIKit

class QuizResultViewController: UIViewController {
    
    static let className = "QuizResultViewController"
    static let identifier = "QuizResultViewController"
    
    var score = 0
    var WrongAnswers:[Int] = []

    @IBOutlet weak var navigationBackButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var checkWrongQuestionButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
    }
    
    func configureView(){
        self.checkWrongQuestionButton.layer.cornerRadius = 16
        self.scoreLabel.text = "\(self.score)/100"
    }

    @IBAction func tapNavigationBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func tapWrongAnswerButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(identifier: WrongAnswerViewController.identifier) as? WrongAnswerViewController else {return}
        viewController.WrongAnswers = self.WrongAnswers
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}
