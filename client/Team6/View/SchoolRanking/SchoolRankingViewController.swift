//
//  SchoolRankingViewController.swift
//  Team6
//
//  Created by 정현우 on 2022/11/13.
//

import UIKit

class RankingDataModel {
    let Ranking: Int
    let SchoolName: String
    let score: String
    init(Ranking:Int,score:String,SchoolName:String){
        self.Ranking = Ranking
        self.SchoolName = SchoolName
        self.score = score
    }
}

class SchoolRankingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    static let className = "SchoolRankingViewController"
    static let identifier = "SchoolRankingViewController"
    
    var rankingData = [
    RankingDataModel(
        Ranking: 1,
        score: "123,456,789", SchoolName: "유엠대학교"
        ),
    RankingDataModel(
        Ranking: 2,
        score: "123,456,789", SchoolName: "유엠대학교"

        ),
    RankingDataModel(
        Ranking: 3,
        score: "123,456,789", SchoolName: "유엠대학교"
        ),
    RankingDataModel(
        Ranking: 4,
        score: "123,456,789", SchoolName: "유엠대학교"

        ),
    RankingDataModel(
        Ranking: 5,
        score: "123,456,789", SchoolName: "유엠대학교"

        ),
    RankingDataModel(
        Ranking: 6,
        score: "123,456,789", SchoolName: "유엠대학교"

        ),
    RankingDataModel(
        Ranking: 7,
        score: "123,456,789", SchoolName: "유엠대학교"
),
    RankingDataModel(
        Ranking: 8,
        score: "123,456,789", SchoolName: "유엠대학교"
),RankingDataModel(
    Ranking: 9,
    score: "123,456,789", SchoolName: "유엠대학교"
),RankingDataModel(
    Ranking: 10,
    score: "123,456,789", SchoolName: "유엠대학교"
),RankingDataModel(
    Ranking: 11,
    score: "123,456,789", SchoolName: "유엠대학교"
),
        
    ]
	
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rankingData[section].score.count
    }
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SchoolRankingTableViewCell2", for: indexPath) as? SchoolRankingTableViewCell2 else { return UITableViewCell() }
        var gold = #colorLiteral(red: 0.9882352941, green: 0.7607843137, blue: 0, alpha: 1)
     
        if indexPath.row == 0 {
            cell.backgroundColor = gold
        }
       
        cell.rankLabel.text = "\(indexPath.row+1)"
        
        cell.schoolNameLabel.text = rankingData[indexPath.row].SchoolName
        cell.scoreLabel.text = rankingData[indexPath.row].score

        cell.layer.cornerRadius = 20
        cell.layer.borderWidth = 0.5
        cell.layer.borderColor = UIColor(red: 0.851, green: 0.851, blue: 0.851, alpha: 1).cgColor

        return cell
    }
    
    @IBAction func backButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "SchoolRankingTableViewCell2", bundle: nil), forCellReuseIdentifier: "SchoolRankingTableViewCell2")

        // Do any additional setup after loading the view.
    }
}
