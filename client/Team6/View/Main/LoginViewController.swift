//
//  LoginViewController.swift
//  Team6
//
//  Created by 정현우 on 2022/11/13.
//

import UIKit

class LoginViewController: UIViewController {

	@IBOutlet weak var loginView: UIView!
	
	
	override func viewDidLoad() {
        super.viewDidLoad()

		self.navigationController?.setNavigationBarHidden(true, animated: true)
		
		loginView.layer.borderWidth = 1
		loginView.layer.borderColor = UIColor(named: "LoginBorderColor")?.cgColor
		loginView.layer.cornerRadius = 16
    }
    
	@IBAction func LoginButtonTapped(_ sender: UIButton) {
		guard let mainVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: MainViewController.identifier) as? MainViewController else {return}
		self.navigationController?.pushViewController(mainVC, animated: true)
	}
	
	

}
