//
//  MultipleNumberTableViewController.swift
//  Task1_Multiples
//
//  Created by Smita Tamboli on 1/10/16.
//  Copyright © 2016 Cybage. All rights reserved.
//

import UIKit

class MultipleNumberTableViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    var arrayOfMultiples:[Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK: UITableViewDataSource Methods
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfMultiples.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
        cell.textLabel?.text = String(self.arrayOfMultiples[indexPath.row])
        return cell
    }
}
