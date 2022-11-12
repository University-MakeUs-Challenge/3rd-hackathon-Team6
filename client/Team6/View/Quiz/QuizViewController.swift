//
//  QuizViewController.swift
//  Team6
//
//  Created by 정현우 on 2022/11/13.
//

import UIKit

class QuizViewController: UIViewController {
	
	static let className = "QuizViewController"
	static let identifier = "QuizViewController"

    @IBOutlet weak var navigationBackButton: UIButton!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var quizTitleLabel: UILabel!
    @IBOutlet weak var quizContentsLabel: UILabel!
    
    @IBOutlet weak var choiceOView: UIView!
    @IBOutlet weak var choiceXView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func configureView(){
        self.progressView.progressTintColor = .green // 02FF00
        
        
    }
    

}
