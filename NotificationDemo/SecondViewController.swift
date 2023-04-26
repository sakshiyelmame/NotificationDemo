//
//  SecondViewController.swift
//  NotificationDemo
//
//  Created by Sakshi Yelmame on 25/04/23.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func buttonFBClick(_ sender: UIButton) {
        NotificationCenter.default.post(name: .facebook, object: nil)
    }
    
    @IBAction func buttonTwitterClick(_ sender: UIButton) {
        NotificationCenter.default.post(name: .twitter, object: nil)

    }
    
}
