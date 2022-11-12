//SchoolRankingTableViewCell
//  SchoolRankingTableViewCell.swift
//  Team6
//
//  Created by 이예나 on 11/13/22.
//

import UIKit

class SchoolRankingTableViewCell: UITableViewCell {
    static let className = "SchoolRankingTableViewCell"
    static let identifier = "SchoolRankingTableViewCell"
    
    @IBOutlet weak var rankLabel: UILabel!
    @IBOutlet weak var schoolNameLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var rankingData: RankingDataModel? {
        didSet{
           if let rankingData = rankingData {
               rankLabel?.text = String(rankingData.Ranking)
                schoolNameLabel?.text = rankingData.SchoolName
                scoreLabel?.text = rankingData.score

            }
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
