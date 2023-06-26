//
//  FoodTableViewCell.swift
//  food_list
//
//  Created by Cuneyt on 25.06.2023.
//

import UIKit
protocol FoodTableViewCellProtocol {
    func toGiveOrder(indexPath:IndexPath)
}

class FoodTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBAction func toGiveOrder(_ sender: Any) {
        cellProtocol?.toGiveOrder(indexPath: indexPath!);
    }
    
    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var foodName: UILabel!
    
    @IBOutlet weak var foodPrice: UILabel!
    var indexPath:IndexPath?
    var cellProtocol:FoodTableViewCellProtocol?
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
