//
//  ViewController.swift
//  NotificationDemo
//
//  Created by Sakshi Yelmame on 25/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var infoUILabel: UILabel!
    
    @IBOutlet weak var imageUIImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(facebook(notification: )), name: .facebook, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(twitter(notification: )), name: .twitter, object: nil)
    }

    @objc func facebook(notification:Notification){
        infoUILabel.text = "Facebook"
        imageUIImageView.image = UIImage(named: "Facebook")
    }

    @objc func twitter(notification:Notification){
        infoUILabel.text = "Twitter"
        imageUIImageView.image = UIImage(named: "Twitter")
    }
    
    @IBAction func chooseSocialButton(_ sender: UIButton) {
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
}

extension Notification.Name{
    static let facebook = Notification.Name("facebook")
    static let twitter = Notification.Name("twitter")

}
