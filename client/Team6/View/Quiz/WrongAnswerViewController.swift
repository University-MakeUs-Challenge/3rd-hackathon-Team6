//
//  WrongAnswerViewController.swift
//  Team6
//
//  Created by User on 2022/11/13.
//

import UIKit

class WrongAnswerViewController: UIViewController {
    
    static let className = "WrongAnswerViewController"
    static let identifier = "WrongAnswerViewController"

    @IBOutlet weak var choiceOButton: UIView!
    @IBOutlet weak var choiceXButton: UIView!
    
    var WrongAnswers:[Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
    }
    
    func configureView(){
        self.choiceOButton.layer.borderWidth = 1
        self.choiceXButton.layer.borderWidth = 1
        self.choiceOButton.layer.borderColor = CGColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1)
        self.choiceXButton.layer.borderColor = CGColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1)
        self.choiceOButton.layer.cornerRadius = 16
        self.choiceXButton.layer.cornerRadius = 16
        
        self.choiceXButton.layer.backgroundColor = CGColor(red: 255/255, green: 0, blue: 0, alpha: 1)
        self.choiceOButton.layer.backgroundColor = CGColor(red: 2/255, green: 255/255, blue: 0, alpha: 1)
    }
    

    @IBAction func tapNavigationBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    

}
