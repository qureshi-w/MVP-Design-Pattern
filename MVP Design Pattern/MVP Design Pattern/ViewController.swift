//
//  ViewController.swift
//  MVP Design Pattern
//
//  Created by Waqar Qureshi on 13/07/2020.
//  Copyright © 2020 Waqar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Initialize when use
    lazy var presenter = Presenter(ref: self)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // Delegate the work to Presenter
    @IBAction func tapMeAction(_ sender: Any) {
        self.presenter.buttonTapped()
    }
}


// When work is done main view controller will be notified
extension ViewController : PresenterProtocol{
    
    func updateBackgroundColor() {
        self.view.backgroundColor = self.view.backgroundColor == .red ? .yellow : .red
    }
}
