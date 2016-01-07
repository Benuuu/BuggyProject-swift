//
//  SearchesViewController.swift
//  BuggyProject
//
//  Created by Benjamin Wu on 1/6/16.
//  Copyright © 2016 IntrepidPursuits. All rights reserved.
//

import UIKit

class SearchesViewController: UIViewController, UITableViewDataSource {

    static let cellIdentifier = "cellIdentifier"
    var searches : [String] = []
    @IBOutlet var tableView : UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: SearchesViewController.cellIdentifier)
    }

    // MARK: UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searches.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(SearchesViewController.cellIdentifier, forIndexPath: indexPath)
        cell.textLabel?.text = searches[indexPath.row]
        return cell
    }

    @IBAction func doneTapped() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
