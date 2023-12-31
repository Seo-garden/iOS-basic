//
//  ViewController.swift
//  SubmitValue-Back
//
//  Created by 서정원 on 11/11/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var resultEmail: UILabel!
    @IBOutlet var resultUpdate: UILabel!
    @IBOutlet var resultInterval: UILabel!

    override func viewWillAppear(_ animated: Bool) {
        let ud = UserDefaults.standard
        
        if let email = ud.string(forKey: "email") {
            resultEmail.text = email
        }
        let update = ud.bool(forKey: "isUpdate")
        resultUpdate.text = (update == true ? "자동갱신" : "자동갱신안함")
        let interval = ud.double(forKey: "interval")
//        resultInterval = "\(Int(interval))분마다"
//        let ad = UIApplication.shared.delegate as? AppDelegate
//        
//        if let email = ad?.paramEmail {
//            resultEmail.text = email
//        }
//        if let update = ad?.paramUpdate {
//            resultUpdate.text = update == true ? "자동갱신" : "자동갱신안함"
//        }
//        if let interval = ad?.paramInterval {
//            resultInterval.text = "\(Int(interval))분마다"
//        }
//        if let email = paramEmail {
//            resultEmail.text = email
//        }
//        if let update = paramUpdate {
//            resultUpdate.text = update == true ? "자동갱신" : "자동갱신안함"
//        }
//        if let interval = paramInterval {
//            resultInterval.text = "\(Int(interval))분마다"
//        }
    }
}

