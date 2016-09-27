//
//  AttendeeCell.swift
//  FriZo
//
//  Created by Vu Nguyen on 9/25/16.
//  Copyright © 2016 FriZo. All rights reserved.
//

import UIKit

class AttendeeCell: UITableViewCell {
    
    
    @IBOutlet weak var AttendeeImage: UIImageView!

    @IBOutlet weak var attendeeNameLabel: UILabel!
    
    @IBOutlet weak var attendeePhoneNumLabel: UILabel!
    @IBOutlet weak var timeLeftLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        AttendeeImage.image = UIImage(named: "avatarx2")
        AttendeeImage.layer.cornerRadius = 5
        AttendeeImage.layer.borderWidth = 2
        AttendeeImage.layer.borderColor = UIColor.gray.cgColor
        AttendeeImage.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
