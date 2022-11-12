//
//  MainCollectionViewCell.swift
//  Team6
//
//  Created by 정현우 on 2022/11/13.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {
	
	static let className = "MainCollectionViewCell"
	static let identifier = "MainCollectionViewCell"
	
	@IBOutlet weak var titleLabel: UILabel!
	@IBOutlet weak var imageView: UIImageView!
	
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

}
