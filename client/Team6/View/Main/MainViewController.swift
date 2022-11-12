//
//  ViewController.swift
//  Team6
//
//  Created by 정현우 on 2022/11/13.
//

import UIKit

class MainViewController: UIViewController {
	
	static let className = "MainViewController"
	static let identifier = "MainViewController"

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}

	@IBAction func testButtonTapped(_ sender: UIButton) {
		let JoinCompetitionSV = UIStoryboard.init(name: "JoinCompetition", bundle: nil)
				guard let joinCompetitionVC = JoinCompetitionSV.instantiateViewController(withIdentifier: JoinCompetitionViewController.identifier) as? JoinCompetitionViewController else {return}

				self.navigationController?.pushViewController(joinCompetitionVC, animated: true) 
	}
	
}

