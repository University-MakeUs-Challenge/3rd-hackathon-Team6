//
//  JoinCompetitionViewController.swift
//  Team6
//
//  Created by 정현우 on 2022/11/13.
//

import UIKit

class JoinCompetitionViewController: UIViewController {
	
	static let className = "JoinCompetitionViewController"
	static let identifier = "JoinCompetitionViewController"
	
	
	@IBOutlet weak var tableView: UITableView!
	
	override func viewDidLoad() {
        super.viewDidLoad()
		
		tableView.delegate = self
		tableView.dataSource = self
		
		tableView.register(UINib(nibName: JoinCompetitionTableViewCell.className, bundle: nil), forCellReuseIdentifier: JoinCompetitionTableViewCell.identifier)
		
		tableView.layer.zPosition = -1
		
        
    }
    
	@IBAction func backButtonTapped(_ sender: UIButton) {
		self.navigationController?.popViewController(animated: true)
	}
	
	
	@IBAction func joinButtonTapped(_ sender: UIButton) {
		let sheet = UIAlertController(title: nil, message: "참여 되었습니다!", preferredStyle: .alert)
		
		sheet.addAction(UIAlertAction(title: "확인", style: .cancel, handler: { _ in print("확인 클릭") }))
				
		present(sheet, animated: true)
	}
	
   

}

extension JoinCompetitionViewController: UITableViewDelegate, UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 1
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView.dequeueReusableCell(withIdentifier: JoinCompetitionTableViewCell.identifier) as? JoinCompetitionTableViewCell else {return UITableViewCell()}
		
		cell.contentImageView.image = UIImage(named: "PosterImage")
		
		return cell
	}
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 1080
	}
	
	
	
	
}
