//
//  SecondViewController.swift
//  多画面返回，进入下一页面
//
//  Created by 方瑾 on 2019/1/31.
//  Copyright © 2019 方瑾. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var secondLable: UILabel!
    
    
    @IBOutlet weak var input2TextField: UITextField!
    
    @IBOutlet weak var nextThirdButton: UIButton!
    
    
    @IBOutlet weak var back1Button: UIButton!
    var textForm = ""
    var secondPageVC : FirstViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondLable.text = textForm
        nextThirdButton.addTarget(self, action: #selector(touch3), for: .touchUpInside)
        back1Button.addTarget(self, action: #selector(touch1), for: .touchUpInside)

        
    }
    @objc func touch3() {
        performSegue(withIdentifier: "TwoTOThirdSegue", sender: nil)
    }
    @objc func touch1() {
        secondPageVC?.displayLabel.text = secondLable.text
        dismiss(animated: true, completion: nil)
    }
   

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "TwoTOThirdSegue" {
            let thirdPageVC = segue.destination as! ThirdViewController
            thirdPageVC.text = input2TextField.text!
         
        }
    }
   

}
