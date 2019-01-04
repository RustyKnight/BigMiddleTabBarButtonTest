//
//  LargeMiddleTabBar.swift
//  TabTest
//
//  Created by Shane Whitehead on 4/1/19.
//  Copyright © 2019 Shane Whitehead. All rights reserved.
//

import Foundation
import UIKit

class LargeMiddleTabBar: UITabBar {
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        var tabBarButtons: [UIView] = []
        for view in subviews {
            if NSStringFromClass(type(of: view)) == "UITabBarButton" {
                tabBarButtons.append(view)
            }
        }
        // probably need to then sort them by frame 🙄
        let middleButtonView = tabBarButtons[1]
        for subview in middleButtonView.subviews {
            if subview.isKind(of: UIImageView.self) {
                let testPoint = convert(point, to: subview)
                guard subview.bounds.contains(testPoint) else {
                    continue
                }
                return middleButtonView
            }
        }
        return super.hitTest(point, with: event)
    }
}
