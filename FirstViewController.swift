//
//  FirstViewController.swift
//  多画面返回，进入下一页面
//
//  Created by 方瑾 on 2019/1/31.
//  Copyright © 2019 方瑾. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var next2Button: UIButton!
    
    
    @IBOutlet weak var next3Button: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        next2Button.addTarget(self, action: #selector(touchButton), for: .touchUpInside) //.valuechanged
        next3Button.addTarget(self, action: #selector(touchButton2), for: .touchUpInside)
        
    }
    @objc func touchButton() {
        performSegue(withIdentifier: "ToSecondSegue", sender: nil)
    }

    @objc func touchButton2() {
        performSegue(withIdentifier: "ToThirdSegue", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToSecondSegue" {
            let secondPageVC = segue.destination as! SecondViewController
            secondPageVC.textForm = inputTextField.text!
        } else if segue.identifier == "ToThirdSegue" {
            let newThirdPageVC = segue.destination as! ThirdViewController
            newThirdPageVC.text = inputTextField.text!
        }
    }
   
    

}
