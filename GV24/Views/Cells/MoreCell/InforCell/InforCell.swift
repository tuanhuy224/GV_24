//
//  InforCell.swift
//  GV24
//
//  Created by HuyNguyen on 5/31/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit
import IoniconsSwift

class InforCell: UITableViewCell {
    var buttons:[UIButton]?
    var imageFirst:UIImage?
    
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet var btRating: [UIButton]!
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var ImageGender: UIImageView!
    @IBOutlet weak var imageAge: UIImageView!
    @IBOutlet weak var imagePhone: UIImageView!
    @IBOutlet weak var imageAddress: UIImageView!
    
    @IBOutlet weak var blurView: UIVisualEffectView!
    @IBOutlet weak var lbAddress: UILabel!
    @IBOutlet weak var lbPhone: UILabel!
    @IBOutlet weak var lbAge: UILabel!
    @IBOutlet weak var lbGender: UILabel!
    @IBOutlet weak var imageProfile: UIImageView!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        avatar.layer.cornerRadius = avatar.frame.size.width/2
        avatar.clipsToBounds = true
        imageFirst = Ionicons.star.image(32).maskWithColor(color: UIColor.colorWithRedValue(redValue: 255, greenValue: 255, blueValue: 255, alpha: 1))
        ImageGender.image = Ionicons.transgender.image(32).maskWithColor(color:  UIColor.colorWithRedValue(redValue: 47, greenValue: 186, blueValue: 194, alpha: 1))
        imagePhone.image = Ionicons.iphone.image(32).maskWithColor(color:  UIColor.colorWithRedValue(redValue: 47, greenValue: 186, blueValue: 194, alpha: 1))
        imageAddress.image = Ionicons.iosHomeOutline.image(32).maskWithColor(color:  UIColor.colorWithRedValue(redValue: 47, greenValue: 186, blueValue: 194, alpha: 1))
        imageAge.image = Ionicons.calendar.image(32).maskWithColor(color:  UIColor.colorWithRedValue(redValue: 47, greenValue: 186, blueValue: 194, alpha: 1))
        for i in btRating {
            i.setImage(imageFirst, for: .normal)
        }
        blurView.alpha = 1
    }
    
    @IBAction func btRatingAction(_ sender: UIButton) {
        let image = Ionicons.star.image(18).maskWithColor(color: UIColor(red: 253/255, green: 179/255, blue: 53/255, alpha: 1))
        let tag = sender.tag
        for i in btRating{
            if i.tag <= tag {
                i.setImage(image, for: .normal)
            }else{
                i.setImage(imageFirst, for: .normal)
            }
        }
    }
   
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
