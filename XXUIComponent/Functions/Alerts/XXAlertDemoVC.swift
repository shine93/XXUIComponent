//
//  XXAlertDetailVC.swift
//  XXUIComponent
//
//  Created by 魏梦雪 on 2021/1/8.
//  Copyright © 2021 魏梦雪. All rights reserved.
//

import Foundation
import UIKit


class XXAlertDemoVC: XXCustomAlertVC {

    lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "Hallo, world!"
        titleLabel.textColor = UIColor.red
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.systemFont(ofSize: 15)
        return titleLabel
    }()

    lazy var subtitleLabel: UILabel = {
        let subtitleLabel = UILabel()
        subtitleLabel.text = "I am subtitle!"
        subtitleLabel.textColor = UIColor.gray
        subtitleLabel.textAlignment = .center
        subtitleLabel.font = UIFont.systemFont(ofSize: 12)
        return subtitleLabel
    }()
    lazy var confirmButton: UIButton = {
        let confirmButton = UIButton(type: .custom)
        confirmButton.layer.cornerRadius = 10
        confirmButton.setTitle("dismiss", for: .normal)
        confirmButton.backgroundColor = UIColor.blue
        confirmButton.setTitleColor(UIColor.white, for: .normal)
        return confirmButton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        confirmButton.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(titleLabel)
        view.addSubview(subtitleLabel)
        view.addSubview(confirmButton)

        view.addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 10))
        view.addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 10))
        view.addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1, constant: -10))
        view.addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 30))

        view.addConstraint(NSLayoutConstraint(item: subtitleLabel, attribute: .top, relatedBy: .equal, toItem: titleLabel, attribute: .bottom, multiplier: 1, constant: 10))
        view.addConstraint(NSLayoutConstraint(item: subtitleLabel, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 10))
        view.addConstraint(NSLayoutConstraint(item: subtitleLabel, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1, constant: -10))
        view.addConstraint(NSLayoutConstraint(item: subtitleLabel, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 30))

        view.addConstraint(NSLayoutConstraint(item: confirmButton, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: -10))
        view.addConstraint(NSLayoutConstraint(item: confirmButton, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 20))
        view.addConstraint(NSLayoutConstraint(item: confirmButton, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1, constant: -20))
        view.addConstraint(NSLayoutConstraint(item: confirmButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 30))

        confirmButton.addTarget(self, action: #selector(tappedConfirmButton), for: .touchUpInside)
    }


    @objc func tappedConfirmButton() {
        dismiss(animated: true, completion: nil )
    }

}
