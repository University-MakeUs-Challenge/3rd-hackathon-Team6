//
//  ViewController.swift
//  3rd-hackaton-Team6
//
//  Created by 이예나 on 11/12/22.
//

import UIKit

class MainViewController: UIViewController {
	
	static let className = "MainViewController"
	static let identifier = "MainViewController"

	@IBOutlet weak var rankingView: UIView!
	
	
	override func viewDidLoad() {
        super.viewDidLoad()
		
		
		rankingView.layer.borderWidth = 0.5
		rankingView.layer.borderColor = UIColor(named: "RankingBorderColor")?.cgColor
		rankingView.layer.cornerRadius = 16
    }

	@IBAction func buttonTapped(_ sender: UIButton) {

		
		let JoinCompetitionSV = UIStoryboard.init(name: "JoinCompetition", bundle: nil)
		guard let joinCompetitionVC = JoinCompetitionSV.instantiateViewController(withIdentifier: JoinCompetitionViewController.identifier) as? JoinCompetitionViewController else {return}
		
		self.navigationController?.pushViewController(joinCompetitionVC, animated: true)
	}
	
}

