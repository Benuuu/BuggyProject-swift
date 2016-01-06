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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "textFieldDidChange:", name: UITextFieldTextDidChangeNotification , object: self.textField);
    }

    // MARK: Actions
    // TODO: Rename this
    @IBAction func bTap() {

    }
    // MARK: Helpers

    func imgurURLRequest() -> NSURLRequest {
        let urlString = "http://i.imgur.com/\(self.textField?.text)).png"
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

