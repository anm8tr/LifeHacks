//
//  RoundImageView.swift
//  LifeHacks
//
//  Created by Richard Garrison on 5/1/21.
//

import UIKit

@IBDesignable
class RoundImageView: UIImageView {
    
    @IBInspectable
        var cornerRadius: CGFloat {
            get { return layer.cornerRadius }
            set {
                layer.cornerRadius = newValue
                layer.masksToBounds = newValue > 0
            }
        }
        
        @IBInspectable
        var borderWidth: CGFloat {
            get { return layer.borderWidth }
            set { layer.borderWidth = newValue }
        }
        
        @IBInspectable
        var borderColor: UIColor? {
            get {
                guard let color = layer.borderColor else {
                    return nil
                }
                return UIColor(cgColor: color)
            }
            set { layer.borderColor = newValue?.cgColor }
        }
    
}
