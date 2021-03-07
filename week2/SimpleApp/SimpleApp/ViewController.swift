//
//  ViewController.swift
//  SimpleApp
//
//  Created by 曾問 on 2021/3/5.
//

import UIKit
    


class ViewController: UIViewController {
            
    
    @IBOutlet weak var factText: UILabel!
    @IBOutlet var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeColor(index: 0)
    }
    
    
    @IBAction func nextFact(_ sender: UIButton) {
        let randomIndex = Int.random(in: Range(0...6))
        changFactText(index: randomIndex)
        changeColor(index: randomIndex )
    }
    
    func changFactText(index: Int){
        let text = ["Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.",
                    "Contrary to popular belief, Lorem Ipsum is not simply random text.",
                    "Richard McClintock, a Latin professor at Hampden-Sydney College in ",
                    "looked up one of the more obscure Latin words, consectetur",
                    "from a Lorem Ipsum passage, and going through the cites of the word",
                    "This book is a treatise on the theory of ethics, very popular during the.",
                    "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.."
        ]
        factText.text = text[index]
    }
    
    func changeColor(index: Int){
        let color = [UIColor(red: 0.12, green: 0.12, blue: 0.27, alpha: 0.8),
                     UIColor(red: 0.12, green: 0.27, blue: 0.12, alpha: 0.8),
                     UIColor(red: 0.27, green: 0.12, blue: 0.12, alpha: 0.8),
                     UIColor(red: 0.39, green: 0.12, blue: 0.27, alpha: 0.8),
                     UIColor(red: 0.12, green: 0.27, blue: 0.39, alpha: 0.8),
                     UIColor(red: 0.27, green: 0.39, blue: 0.12, alpha: 0.8),
                     UIColor.orange
        ]
        self.view.backgroundColor = color[index]
        changeButton.setTitleColor(color[index], for: .normal)
    }
}

