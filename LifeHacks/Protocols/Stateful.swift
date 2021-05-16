//
//  Stateful.swift
//  LifeHacks
//
//  Created by Richard Garrison on 5/8/21.
//

import Foundation


protocol Stateful: AnyObject {
    var stateController: StateController? { get set }
}

extension Stateful {
    func passState(to destination: Stateful) {
        destination.stateController = stateController
    }
}
