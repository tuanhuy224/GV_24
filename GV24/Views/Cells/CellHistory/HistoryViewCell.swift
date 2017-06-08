//
//  HistoryViewCell.swift
//  GV24
//
//  Created by HuyNguyen on 5/29/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit
import IoniconsSwift

class HistoryViewCell: UITableViewCell {

    @IBOutlet weak var btImage: UIButton!
    @IBOutlet weak var timeWork: UILabel!
    @IBOutlet weak var createdDate: UILabel!
    @IBOutlet weak var workNameLabel: UILabel!
    @IBOutlet weak var iconAlarm: UIImageView!{
        didSet{
            let icon = Ionicons.iosAlarm.image(32)
            btImage.setImage(icon, for: .normal)
            btImage.tintColor = UIColor.colorWithRedValue(redValue: 47, greenValue: 185, blueValue: 194, alpha: 1)
        }
    }
    @IBOutlet weak var imageWork: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageWork.layer.cornerRadius = imageWork.frame.width/2
        imageWork.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
