//
//  XXAlertViewController.swift
//  XXUIComponent
//
//  Created by 魏梦雪 on 2020/8/28.
//  Copyright © 2020 魏梦雪. All rights reserved.
//

import UIKit

class XXAlertViewController: UIViewController, UIViewControllerProtocal {
    
    lazy var alertButton: UIButton = {
        let alertButton = UIButton(type: .custom)
        alertButton.setTitle("alert", for: .normal)
        alertButton.setTitleColor(UIColor.white, for: .normal)
        alertButton.backgroundColor = .blue
        alertButton.layer.cornerRadius = 12
        alertButton.layer.masksToBounds = true
        alertButton.addTarget(self, action: #selector(tappedAlertButton), for: .touchUpInside)
        return alertButton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .yellow
        view.addSubview(alertButton)
        alertButton.frame = CGRect(x: 100, y: 100, width: 80, height: 30)
        
    }
    
    @objc private func tappedAlertButton() {
        
    }

}
