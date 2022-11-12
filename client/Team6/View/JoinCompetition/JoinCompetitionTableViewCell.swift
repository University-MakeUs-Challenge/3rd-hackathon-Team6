//
//  JoinCompetitionTableViewCell.swift
//  Team6
//
//  Created by 정현우 on 2022/11/13.
//

import UIKit

class JoinCompetitionTableViewCell: UITableViewCell {
	
	static let className = "JoinCompetitionTableViewCell"
	static let identifier = "JoinCompetitionTableViewCell"
	
	
	@IBOutlet weak var contentImageView: UIImageView!
	
	
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
