//
//  ViewController.swift
//  BuggyProject
//
//  Created by Benjamin Wu on 1/6/16.
//  Copyright © 2016 IntrepidPursuits. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField?
    @IBOutlet weak var imageView: UIImageView?
    @IBOutlet weak var validImageView: UIView?
    var searches: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        validImageView?.backgroundColor = UIColor.redColor()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "textFieldDidChange:", name: UITextFieldTextDidChangeNotification , object: self.textField);
    }

    // MARK: Actions
    // TODO: Rename this
    @IBAction func bTap() {
    }

    @IBAction func searchesTapped() {
    }

    // MARK: Helpers

    func imgurURLRequest() -> NSURLRequest {
        // sample: WPOBwNC
        let urlString = String(format: "http://i.imgur.com/%@.png", (textField?.text)!)
        return NSURLRequest(URL: NSURL(string: urlString)!)
    }

    func isValidString(stringToCheck: String?) -> Bool {
        let stringLength = stringToCheck?.characters.count
        return stringLength >= 4 && stringLength <= 7
    }

    func textFieldDidChange(notification: NSNotification) {
        if isValidString(self.textField?.text) {
            validImageView?.backgroundColor = UIColor.greenColor()
        } else {
            validImageView?.backgroundColor = UIColor.redColor()
        }
        self.textField?.text
    }
}

