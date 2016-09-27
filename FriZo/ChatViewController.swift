//
//  ChatViewController.swift
//  FriZo
//
//  Created by Vu Nguyen on 9/21/16.
//  Copyright © 2016 FriZo. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {
    
    @IBOutlet weak var bottomHeight: NSLayoutConstraint!
    @IBOutlet var chatTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShowNotification(notification:)), name: NSNotification.Name.UIKeyboardWillShow, object: nil)

        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHideNotification(notification:)), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.UIKeyboardWillHide, object: nil)
  
    }
    
    
    func keyboardWillShowNotification(notification: Notification) {
        if let userInfor = notification.userInfo{
        if let keyboardSize = (userInfor[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            bottomHeight.constant = keyboardSize.height
            } }
        view.setNeedsLayout()
    }
    
    func keyboardWillHideNotification(notification: Notification) {
        bottomHeight.constant = 0
        view.setNeedsLayout()
    }

    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }


}
