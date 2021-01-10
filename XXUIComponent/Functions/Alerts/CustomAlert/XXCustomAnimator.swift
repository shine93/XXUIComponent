//
//  XXCustomAnimator.swift
//  XXUIComponent
//
//  Created by 魏梦雪 on 2021/1/8.
//  Copyright © 2021 魏梦雪. All rights reserved.
//

import UIKit


class XXCustomAnimator: NSObject, UIViewControllerAnimatedTransitioning {
    var isPresentation = false

    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.25
    }

    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        let containerView = transitionContext.containerView
        if isPresentation {
            //present动画
            guard let toView = transitionContext.view(forKey: UITransitionContextViewKey.to) else {
                return
            }
            containerView.addSubview(toView)
            toView.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
            UIView.animate(withDuration: 0.25) {
                toView.transform = CGAffineTransform(scaleX: 1, y: 1)
            } completion: { (finished) in
                transitionContext.completeTransition(true)
            }
        } else {
            //dismiss动画
            guard let fromView = transitionContext.view(forKey: UITransitionContextViewKey.from) else {
                return
            }
            fromView.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
            UIView.animate(withDuration: 0.25) {
                fromView.transform = CGAffineTransform(scaleX: 1, y: 1)
            } completion: { (finished) in
                transitionContext.completeTransition(true)
            }
        }
    }

}
