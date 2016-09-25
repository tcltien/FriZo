//
//  UserPicCell.swift
//  FriZo
//
//  Created by Vu Nguyen on 9/24/16.
//  Copyright © 2016 FriZo. All rights reserved.
//

import UIKit

class UserPicCell: UITableViewCell {
    
    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var widthConstrain: NSLayoutConstraint!
    @IBOutlet weak var heightConstrain: NSLayoutConstraint!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        userImage.image = UIImage(named: "avatarx2")
        userImage.layer.cornerRadius = widthConstrain.constant/2
        userImage.clipsToBounds = true
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
