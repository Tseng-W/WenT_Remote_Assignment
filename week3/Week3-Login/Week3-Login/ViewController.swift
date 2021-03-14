//
//  ViewController.swift
//  Week3-Login
//
//  Created by 曾問 on 2021/3/10.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet var segmentedControl: UISegmentedControl!
    
    var loginController: LoginController!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        for child in children{
            if type(of: child) == LoginController.self{
                loginController = child as? LoginController
            }
        }
        segmentedControl.setTitleTextAttributes([.foregroundColor: UIColor.white], for: .normal)
        segmentedControl.setTitleTextAttributes([.foregroundColor: UIColor.black], for: .selected)
        loginController.receiveSegementState(state: 0)
    }
    


    @IBAction func onSegmentClicked(_ sender: UISegmentedControl) {
        loginController.receiveSegementState(state: sender.selectedSegmentIndex)
    }
    
    @IBAction func submit(_ sender: UIButton) {
        loginController.submit()
        loginController.updateInputElement()
    }
}

