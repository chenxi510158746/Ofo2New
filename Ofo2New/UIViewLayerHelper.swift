//
//  UIViewLayerHelper.swift
//  Ofo2New
//
//  Created by chenxi on 2017/9/28.
//  Copyright © 2017年 chenxi. All rights reserved.
//

import UIKit

extension UIView {
    
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    
    
}
