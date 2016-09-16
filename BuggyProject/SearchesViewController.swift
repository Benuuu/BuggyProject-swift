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
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: SearchesViewController.cellIdentifier)
    }

    // MARK: UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searches.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SearchesViewController.cellIdentifier, for: indexPath)
        cell.textLabel?.text = searches[(indexPath as NSIndexPath).row]
        return cell
    }

    @IBAction func doneTapped() {
        self.dismiss(animated: true, completion: nil)
    }
}
