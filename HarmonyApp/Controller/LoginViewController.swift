//
//  LoginVC.swift
//  HarmonyApp
//
//  Created by Khaled on 8/3/19.
//  Copyright © 2019 Khaled. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet private weak var emailTxtField: UITextField!
    @IBOutlet private weak var passwordTxtField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func LoginBtnWasPressed(_ sender: Any) {
        let st = UIStoryboard(name: "Main", bundle: nil)
        let vc = st.instantiateViewController(withIdentifier: "DiscoverViewController")
        navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction private func notMemberBtnWasPressed(_ sender: Any) {
        let st = UIStoryboard(name: "Main", bundle: nil)
        let vc = st.instantiateViewController(withIdentifier: "RegisterVC")
        navigationController?.pushViewController(vc, animated: true)
    }
}
