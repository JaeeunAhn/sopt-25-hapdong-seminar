//
//  UITabbar+Extension.swift
//  ddareunge_iOS
//
//  Created by 윤동민 on 2019/11/18.
//  Copyright © 2019 SwiftHelloWorld. All rights reserved.
//

import UIKit

extension UITabBar {
    override open func sizeThatFits(_ size: CGSize) -> CGSize {
        super.sizeThatFits(size)
        var sizeThatFits = super.sizeThatFits(size)
        sizeThatFits.height = 96
        return sizeThatFits
    }
}
