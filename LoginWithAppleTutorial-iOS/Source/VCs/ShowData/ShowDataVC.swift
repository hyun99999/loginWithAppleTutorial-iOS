//
//  ShowDataVC.swift
//  LoginWithAppleTutorial-iOS
//
//  Created by kimhyungyu on 2021/06/29.
//

import UIKit

class ShowDataVC: UIViewController {


    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var familyNameLabel: UILabel!
    @IBOutlet weak var givenNameLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var logoutBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func setLoginData() {
        
    }
    
    @IBAction func dismissToMain(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
