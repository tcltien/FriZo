//
//  ListViewController.swift
//  FriZo
//
//  Created by Vu Nguyen on 9/25/16.
//  Copyright © 2016 FriZo. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    @IBAction func onMapViewSeletected(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
}

extension ListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AttendeeCell") as! AttendeeCell
        return cell
    }
}
