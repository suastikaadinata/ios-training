//
//  ViewController.swift
//  ios_training
//
//  Created by Gung Adi on 18/03/24.
//

import UIKit

class ViewController: UIViewController {

    var count = 3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        _ = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer(){
        count -= 1
        if(count == 0){
            print("go to welcome")
            let storyboard: UIStoryboard = UIStoryboard(name: "WelcomeScreenViewController", bundle: nil)
//            let welcomeViewController = storyboard.instantiateInitialViewController(identifier: "WelcomeScreenViewController") as! WelcomeScreenViewController
            let welcomeViewController = storyboard.instantiateInitialViewController()!
           // self.present(welcomeViewController, animated: true, completion: nil)
           self.navigationController?.pushViewController(welcomeViewController, animated: true)
            //AppDelegate.shared.window?.rootViewController = welcomeViewController
        }
    }


}

