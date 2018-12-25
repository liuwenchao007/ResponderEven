//
//  ViewController.swift
//  ResponderEven
//
//  Created by liuwenchao on 2018/12/24.
//  Copyright © 2018年 liuwenchao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var btn :ResponderButton
        = ResponderButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        btn.frame =  CGRect(x: 50, y: 100, width: 200, height: 200)
        btn.setTitle("点我", for: .normal)
        btn.backgroundColor = UIColor.red
        btn.addTarget(self, action: #selector(dianwo), for: .touchUpInside)
        view.addSubview(btn)
        
    }
    @objc private func dianwo(){
        print("点我")
    }

}

