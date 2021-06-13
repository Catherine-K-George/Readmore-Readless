//
//  ViewController.swift
//  Readmore-Readless
//
//  Created by Catherine on 13/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    let textDescription: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.appendReadLess(after: textDescription, trailingContent: .readless)
    }

    @IBAction func didTapLabel(_ sender: UITapGestureRecognizer) {
        guard let text = textLabel.text else { return }

        let readmore = (text as NSString).range(of: TrailingContent.readmore.text)
        let readless = (text as NSString).range(of: TrailingContent.readless.text)
        if sender.didTap(label: textLabel, inRange: readmore) {
            textLabel.appendReadLess(after: textDescription, trailingContent: .readless)
        } else if  sender.didTap(label: textLabel, inRange: readless) {
            textLabel.appendReadmore(after: textDescription, trailingContent: .readmore)
        } else { return }
        
    }
    
}

