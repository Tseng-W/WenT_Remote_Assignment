//
//  LoginController.swift
//  Week3-Login
//
//  Created by 曾問 on 2021/3/14.
//

import UIKit

class LoginController: UIViewController{
    
    @IBOutlet var accountInput: UITextField!
    @IBOutlet var passwordInput: UITextField!
    @IBOutlet var checkInput: UITextField!
    @IBOutlet var checkLabel: UILabel!
    var isSignUp: Bool = false
    let userDefault = UserDefaults()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateInputElement()
        userDefault.setValue("1234", forKey: "appworks_school@gmail.com")
    }
    
    func receiveSegementState(state index: Int) {
        isSignUp = index == 1
        updateInputElement()
    }
    
    func updateInputElement(){
        if isSignUp{
            accountInput.text = nil
            passwordInput.text = nil
            checkInput.text = nil
            checkInput.backgroundColor = UIColor.white
            checkInput.isEnabled = true
            checkLabel.isEnabled = true
        }else{
            accountInput.text = nil
            passwordInput.text = nil
            checkInput.text = nil
            checkInput.backgroundColor = UIColor.gray
            checkInput.isEnabled = false
            checkLabel.isEnabled = false
        }
    }
    
    func submit() {
        guard accountInput.text != "" else {
            presentAlert(message: "Account should not be empty.")
            return
        }
        guard passwordInput.text != "" else {
            presentAlert(message: "Password should not be empty")
            return
        }
        if isSignUp{
            guard checkInput.text != "" else {
                presentAlert(message: "Check Password should not be empty")
                return
            }
            guard checkInput.text == passwordInput.text  else {
                presentAlert(message: "Check Password should be same to password.")
                checkInput.text = nil
                return
            }
        }
        if isSignUp{signUp(account: accountInput.text!, password: passwordInput.text!)}
        else {login(account: accountInput.text!
                    , password: passwordInput.text!)}
    }
    
    func login(account: String, password: String){
        guard userDefault.value(forKey: account) != nil else {
            presentAlert(message: "Account dosen't exist.")
            return
        }
        if password == userDefault.value(forKey: account) as! String{
            presentAlert(title: "Welcome back", message: "Login successed.")
        }else{
            presentAlert(title: "Oops", message: "Wrong password.")
        }
        
    }
    
    func signUp(account: String, password: String){
        userDefault.setValue(password, forKey: account)
        presentAlert(title: "Nice to see you", message: "Sign up successed.")
    }
    
    func presentAlert(title: String = "Error", message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
}
