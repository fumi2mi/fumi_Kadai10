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

    private let backGroundColors = [UIColor(red: 255/255, green: 209/255, blue: 208/255, alpha: 1),
                            UIColor(red: 222/255, green: 246/255, blue: 154/255, alpha: 1),
                            UIColor(red: 203/255, green: 216/255, blue: 255/255, alpha: 1)]

    func configure(name: String, index: Int) {
        nameLabel.text = name
        commentLabel.text = "\(index + 1)番目の都道府県です"
        backgroundColor = backGroundColors[index % backGroundColors.count]
    }
}
