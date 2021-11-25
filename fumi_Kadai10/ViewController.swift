//
//  ViewController.swift
//  fumi_Kadai10
//
//  Created by Fumitaka Imamura on 2021/11/25.
//

import UIKit

class ViewController: UIViewController {
    let prefectures = ["北海道", "青森県", "岩手県", "宮城県", "秋田県",
                       "山形県", "福島県", "茨城県", "栃木県", "群馬県",
                       "埼玉県", "千葉県", "東京都", "神奈川県","新潟県",
                       "富山県", "石川県", "福井県", "山梨県", "長野県",
                       "岐阜県", "静岡県", "愛知県", "三重県", "滋賀県",
                       "京都府", "大阪府", "兵庫県", "奈良県", "和歌山県",
                       "鳥取県", "島根県", "岡山県", "広島県", "山口県",
                       "徳島県", "香川県", "愛媛県", "高知県", "福岡県",
                       "佐賀県", "長崎県", "熊本県", "大分県", "宮崎県",
                       "鹿児島県", "沖縄県"]
    let backGroundColors = [UIColor(red: 255/255, green: 209/255, blue: 208/255, alpha: 1),
                            UIColor(red: 222/255, green: 246/255, blue: 154/255, alpha: 1),
                            UIColor(red: 203/255, green: 216/255, blue: 255/255, alpha: 1)]

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return prefectures.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        cell.nameLabel.text = prefectures[indexPath.row]
        cell.commentLabel.text = "\(indexPath.row + 1)番目の都道府県です"
        cell.backgroundColor = backGroundColors[indexPath.row % 3]
        return cell
    }
}
