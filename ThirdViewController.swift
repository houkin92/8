//
//  ThirdViewController.swift
//  多画面返回，进入下一页面
//
//  Created by 方瑾 on 2019/1/31.
//  Copyright © 2019 方瑾. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var thirdLabel: UILabel!
    
    @IBOutlet weak var input3TextField: UITextField!
    
    
    @IBOutlet weak var back2Button: UIButton!
    
    @IBOutlet weak var turn1Button: UIButton!
    var text = ""
    var thirdPageVC : SecondViewController?
    var newThirdPageVC : FirstViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        thirdLabel.text = text
        back2Button.addTarget(self, action: #selector(touch2), for: .touchUpInside)
        turn1Button.addTarget(self, action: #selector(touch1), for: .touchUpInside)
     
     
    }
    @objc func touch2() {
       thirdPageVC?.secondLable.text = input3TextField.text
        dismiss(animated: true, completion: nil)
    }
    @objc func touch1() {
        newThirdPageVC?.displayLabel.text = input3TextField.text
        dismiss(animated: true, completion: nil)
    }



}
