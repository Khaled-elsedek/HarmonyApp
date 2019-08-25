//
//  RegisterVC.swift
//  HarmonyApp
//
//  Created by Khaled on 8/3/19.
//  Copyright © 2019 Khaled. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet private weak var EmailTxtField: UITextField!
    @IBOutlet private weak var nameTxtField: UITextField!
    @IBOutlet private weak var passwordTxtField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction private func AleardyMemberBtnWasPressed(_ sender: Any) {
        let st = UIStoryboard(name: "Main", bundle: nil)
        let vc = st.instantiateViewController(withIdentifier: "LoginVC")
        navigationController?.pushViewController(vc, animated: true)
    }
}
