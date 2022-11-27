//
//  UIView+.swift
//  Market-Kurly
//
//  Created by 이승헌 on 2022/11/27.
//

import UIKit

extension UIView {
    func addSubviews(_ views: [UIView] ) {
        views.forEach {
            self.addSubview($0)
        }
    }
}
