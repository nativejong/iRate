//
//  rateNV.swift
//  Example
//
//  Created by John Blaine on 12/1/20.
//  Copyright © 2020 John Blaine. All rights reserved.
//

import UIKit

class rateNV: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let vc = rateVC()
        self.pushViewController(vc, animated: false)
    }
    
}
