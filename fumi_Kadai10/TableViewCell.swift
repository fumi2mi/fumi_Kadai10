//
//  TableViewCell.swift
//  fumi_Kadai10
//
//  Created by Fumitaka Imamura on 2021/11/25.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak private var nameLabel: UILabel!
    @IBOutlet weak private var commentLabel: UILabel!

    func getNameLabel() -> UILabel {
        return nameLabel
    }

    func getCommentLabel() -> UILabel {
        return commentLabel
    }

//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
}
