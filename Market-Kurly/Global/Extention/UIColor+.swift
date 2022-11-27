//
//  UIColor+.swift
//  Market-Kurly
//
//  Created by 이승헌 on 2022/11/27.
//

import UIKit

extension UIColor {
    // Kurly Main Color
    @nonobjc class var mainColor: UIColor {
        return UIColor(red: 86/256, green: 12/256, blue: 123/256, alpha: 1.0)
    }
    
    // Home Color
    @nonobjc class var kartButton: UIColor {
        return UIColor(red: 124/256, green: 107/256, blue: 135/256, alpha: 1.0)
    }
    
    // Search Color
    
    @nonobjc class var recommandKeywordText: UIColor {
        return UIColor(red: 134/256, green: 82/256, blue: 190, alpha: 1.0)
    }
    
    @nonobjc class var recommandKeywordBar: UIColor {
        return UIColor(red: 249/256, green: 243/256, blue: 254/256, alpha: 1.0)
    }
    
    @nonobjc class var searchRankingKeywordText: UIColor {
        return UIColor(red: 132/256, green: 79/256, blue: 189/256, alpha: 1.0)
    }
}
