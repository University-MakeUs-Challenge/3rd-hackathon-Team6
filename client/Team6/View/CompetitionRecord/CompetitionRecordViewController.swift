//
//  CompetitionRecordViewController.swift
//  Team6
//
//  Created by 정현우 on 2022/11/13.
//

import UIKit

class CompetitionRecordViewController: UIViewController {
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userSchoolLabel: UILabel!
    @IBOutlet weak var userRankLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    static let className = "CompetitionRecordViewController"
	static let identifier = "CompetitionRecordViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func backButtonDidTap(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}

