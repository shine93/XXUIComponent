//
//  XXCustomTransitionDelegate.swift
//  XXUIComponent
//
//  Created by 魏梦雪 on 2021/1/8.
//  Copyright © 2021 魏梦雪. All rights reserved.
//

import UIKit

class XXCustomTransitionDelegate: NSObject, UIViewControllerTransitioningDelegate {

    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        return XXPresentationController(presentedViewController: presented, presenting: presenting)
    }

    //负责present时的动画效果
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        let animator = XXCustomAnimator()
        animator.isPresentation = true
        return animator
    }

    //负责dismiss时的动画效果
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        let animator = XXCustomAnimator()
        animator.isPresentation = false
        return animator
    }
}
