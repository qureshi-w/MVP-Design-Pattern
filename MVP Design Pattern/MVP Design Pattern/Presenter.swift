//
//  Presenter.swift
//  MVP Design Pattern
//
//  Created by Waqar Qureshi on 13/07/2020.
//  Copyright © 2020 Waqar. All rights reserved.
//

import UIKit

protocol PresenterProtocol : class {
    func updateBackgroundColor()
}


class Presenter: NSObject {
    
    // Weak to avoid retain cycle
    weak var present : PresenterProtocol?
    
    // Dependency injecttion
    init(ref : PresenterProtocol) {
        self.present = ref
    }
    
    
    // Update the main method when work done
    func buttonTapped(){
        self.present?.updateBackgroundColor()
    }
    
    
}
