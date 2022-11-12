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
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    @IBAction func backButtonDidTap(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}

extension CompetitionRecordViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CompetitionRecordCollectionViewCell", for: indexPath) as? CompetitionRecordCollectionViewCell else {return UICollectionViewCell()}
        
        switch indexPath.item {
        case 0:
            cell.categoryLabel.text = "GitHub"
            cell.progressView.setProgress(0.75, animated: false)
        case 1:
            cell.categoryLabel.text = "백준"
            cell.progressView.setProgress(0.25, animated: false)
        case 2:
            cell.categoryLabel.text = "Quiz"
            cell.progressView.setProgress(0.5, animated: false)
        case 3:
            cell.categoryLabel.text = "기여도"
            cell.progressView.setProgress(0.55, animated: false)
        default:
            break
        }
        
        return cell
    }
    
    
}

