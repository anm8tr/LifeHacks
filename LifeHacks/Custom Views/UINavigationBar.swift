//
//  UINavigationBar.swift
//  LifeHacks
//
//  Created by Richard Garrison on 5/16/21.
//

import UIKit

extension UINavigationBar {
    static func setCustomAppearance() {
        UINavigationBar.appearance().tintColor = .white
        UINavigationBar.appearance().barTintColor = .wedgewood
        UINavigationBar.appearance().isTranslucent = false
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    }
}
