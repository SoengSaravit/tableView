//
//  ViewController.swift
//  TableView
//
//  Created by Soeng Saravit on 11/20/17.
//  Copyright © 2017 Soeng Saravit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let nib = UINib(nibName: "CustomTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "myCell")
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return days.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! CustomTableViewCell
        
        cell.configureCell(title: days[indexPath.row], descripiton: "Day")
        
        return cell
    }
}
