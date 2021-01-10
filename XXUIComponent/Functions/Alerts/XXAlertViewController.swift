//
//  XXAlertViewController.swift
//  XXUIComponent
//
//  Created by 魏梦雪 on 2020/8/28.
//  Copyright © 2020 魏梦雪. All rights reserved.
//

import UIKit

class XXAlertViewController: UIViewController, XXTransitionProtocol {
    var customTransitionDelegate: UIViewControllerTransitioningDelegate? //这个很重要，要是全局的，要不然transitionDelegete会不生效。
    
    lazy var alertButton: UIButton = {
        let alertButton = UIButton(type: .custom)
        alertButton.setTitle("从中间present", for: .normal)
        alertButton.setTitleColor(UIColor.white, for: .normal)
        alertButton.backgroundColor = .blue
        alertButton.layer.cornerRadius = 12
        alertButton.layer.masksToBounds = true
        alertButton.addTarget(self, action: #selector(tappedAlertButton), for: .touchUpInside)
        return alertButton
    }()
    lazy var alertButton2: UIButton = {
        let alertButton = UIButton(type: .custom)
        alertButton.setTitle("从中间稍微放大present", for: .normal)
        alertButton.setTitleColor(UIColor.white, for: .normal)
        alertButton.backgroundColor = .blue
        alertButton.layer.cornerRadius = 12
        alertButton.layer.masksToBounds = true
        alertButton.addTarget(self, action: #selector(tappedAlertButton2), for: .touchUpInside)
        return alertButton
    }()
    lazy var alertButton3: UIButton = {
        let alertButton = UIButton(type: .custom)
        alertButton.setTitle("从中间从小到大缩放present", for: .normal)
        alertButton.setTitleColor(UIColor.white, for: .normal)
        alertButton.backgroundColor = .blue
        alertButton.layer.cornerRadius = 12
        alertButton.layer.masksToBounds = true
        alertButton.addTarget(self, action: #selector(tappedAlertButton3), for: .touchUpInside)
        return alertButton
    }()
    lazy var alertButton4: UIButton = {
        let alertButton = UIButton(type: .custom)
        alertButton.setTitle("从底部移动present", for: .normal)
        alertButton.setTitleColor(UIColor.white, for: .normal)
        alertButton.backgroundColor = .blue
        alertButton.layer.cornerRadius = 12
        alertButton.layer.masksToBounds = true
        alertButton.addTarget(self, action: #selector(tappedAlertButton4), for: .touchUpInside)
        return alertButton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        view.addSubview(alertButton)
        view.addSubview(alertButton2)
        view.addSubview(alertButton3)
        view.addSubview(alertButton4)
        alertButton.frame = CGRect(x: 50, y: 100, width: 300, height: 30)
        alertButton2.frame = CGRect(x: 50, y: 150, width: 300, height: 30)
        alertButton3.frame = CGRect(x: 50, y: 200, width: 300, height: 30)
        alertButton4.frame = CGRect(x: 50, y: 250, width: 300, height: 30)
    }
    
    @objc private func tappedAlertButton() {
        customTransitionDelegate = XXCustomTransitionDelegate(alertStyle: .fromCenter)
        let toVc = XXAlertDemoVC()
        toVc.transitioningDelegate = customTransitionDelegate
        toVc.modalPresentationStyle = .custom
        present(toVc, animated: true, completion: nil)
    }

    @objc private func tappedAlertButton2() {
        customTransitionDelegate = XXCustomTransitionDelegate(alertStyle: .scaleFromCenter)
        let toVc = XXAlertDemoVC()
        toVc.transitioningDelegate = customTransitionDelegate
        toVc.modalPresentationStyle = .custom
        present(toVc, animated: true, completion: nil)
    }

    @objc private func tappedAlertButton3() {
        customTransitionDelegate = XXCustomTransitionDelegate(alertStyle: .scaleBig)
        let toVc = XXAlertDemoVC()
        toVc.transitioningDelegate = customTransitionDelegate
        toVc.modalPresentationStyle = .custom
        present(toVc, animated: true, completion: nil)
    }

    @objc private func tappedAlertButton4() {
        customTransitionDelegate = XXCustomTransitionDelegate(alertStyle: .fromBottom)
        let toVc = XXAlertDemoVC()
        toVc.transitioningDelegate = customTransitionDelegate
        toVc.modalPresentationStyle = .custom
        present(toVc, animated: true, completion: nil)
    }

}
