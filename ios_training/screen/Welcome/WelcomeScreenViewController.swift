//
//  WelcomeScreenViewController.swift
//  ios_training
//
//  Created by Gung Adi on 18/03/24.
//

import UIKit

class WelcomeScreenViewController: UIViewController {
    
    @IBOutlet var btnGetStarted: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        btnGetStarted.layer.cornerRadius = 4
        btnGetStarted.clipsToBounds = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnGetStartedTouchUpInside(_ sender: Any){
        let storyboard: UIStoryboard = UIStoryboard(name: "LoginScreenViewController", bundle: nil)
        let loginViewController = storyboard.instantiateInitialViewController()!
        self.navigationController?.pushViewController(loginViewController, animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
