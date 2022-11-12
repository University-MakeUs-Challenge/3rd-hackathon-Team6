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
	
	@IBOutlet weak var collectionView: UICollectionView!

	override func viewDidLoad() {
		super.viewDidLoad()
		
		collectionView.delegate = self
		collectionView.dataSource = self
		collectionView.register(UINib(nibName: MainCollectionViewCell.className, bundle: nil), forCellWithReuseIdentifier: MainCollectionViewCell.identifier)
	}

	
	
	
//	let JoinCompetitionSV = UIStoryboard.init(name: "JoinCompetition", bundle: nil)
//			guard let joinCompetitionVC = JoinCompetitionSV.instantiateViewController(withIdentifier: JoinCompetitionViewController.identifier) as? JoinCompetitionViewController else {return}
//
//			self.navigationController?.pushViewController(joinCompetitionVC, animated: true)
	
}

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 4
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MainCollectionViewCell.identifier, for: indexPath) as? MainCollectionViewCell else {return UICollectionViewCell()}
		
		cell.layer.borderWidth = 1
		cell.layer.borderColor = UIColor(named: "MainColeectionViewCellBorderColor")?.cgColor
		cell.layer.cornerRadius = 16
		
		switch indexPath.item {
		case 0:
			cell.titleLabel.text = "학교 경쟁\n참여하기"
			cell.imageView.image = UIImage(named: "TrophyInMain")
		case 1:
			cell.titleLabel.text = "나의 경쟁기록"
			cell.imageView.image = UIImage(named: "GirlInMain")
		case 2:
			cell.titleLabel.text = "학교 랭킹\n보기"
			cell.imageView.image = UIImage(named: "MedalInMain")
		case 3:
			cell.titleLabel.text = "퀴즈 풀기"
			cell.imageView.image = UIImage(named: "ClipboardInMain")
		default:
			break
		}
		
		
		
		return cell
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		let width = (UIScreen.main.bounds.size.width - 60) / 2
		return CGSize(width: width, height: width)
	}
	
	func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
		switch indexPath.item {
		case 0:
			let JoinCompetitionSB = UIStoryboard.init(name: "JoinCompetition", bundle: nil)
			guard let joinCompetitionVC = JoinCompetitionSB.instantiateViewController(withIdentifier: JoinCompetitionViewController.identifier) as? JoinCompetitionViewController else {return}
		
			self.navigationController?.pushViewController(joinCompetitionVC, animated: true)
		case 1:
			let CompetitionRecordSB = UIStoryboard.init(name: "CompetitionRecord", bundle: nil)
			guard let CompetitionRecordVC = CompetitionRecordSB.instantiateViewController(withIdentifier: CompetitionRecordViewController.identifier) as? CompetitionRecordViewController else {return}
		
			self.navigationController?.pushViewController(CompetitionRecordVC, animated: true)
		case 2:
			let SchoolRankingSB = UIStoryboard.init(name: "SchoolRanking", bundle: nil)
			guard let SchoolRankingVC = SchoolRankingSB.instantiateViewController(withIdentifier: SchoolRankingViewController.identifier) as? SchoolRankingViewController else {return}
		
			self.navigationController?.pushViewController(SchoolRankingVC, animated: true)
		case 3:
			let QuizSB = UIStoryboard.init(name: "Quiz", bundle: nil)
			guard let QuizVC = QuizSB.instantiateViewController(withIdentifier: QuizViewController.identifier) as? QuizViewController else {return}
		
			self.navigationController?.pushViewController(QuizVC, animated: true)
		default:
			return
		}
	}
	
	
}

