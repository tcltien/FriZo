//
//  MapViewController.swift
//  FriZo
//
//  Created by Vu Nguyen on 9/12/16.
//  Copyright © 2016 FriZo. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet var MapView: MKMapView!
    @IBOutlet weak var userAvatarButton: UIButton!
    @IBOutlet weak var userPicHConstraint: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let settingButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.action, target: <#T##Any?#>, action: <#T##Selector?#>)
        userAvatarButton.layer.cornerRadius = userPicHConstraint.constant/2
        userAvatarButton.setImage(UIImage(named: "avatarx2"), for: .normal)
        userAvatarButton.clipsToBounds = true

        
        navigationItem.leftBarButtonItem = button

    }


}
