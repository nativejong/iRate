//
//  rateVC.swift
//  Example
//
//  Created by John Blaine on 12/1/20.
//  Copyright © 2020 John Blaine. All rights reserved.
//

import UIKit
import iRate

class rateVC: UIViewController {
    var music : iRate?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.edgesForExtendedLayout = []
        music = iRate(frame: CGRect.zero)
        self.view.addSubview(music!)
    }
    

    override func viewWillLayoutSubviews() {
        let w = self.view.frame.size.width;
        let h = self.view.frame.size.height;
        music?.frame = CGRect(x: w * 0.2, y: h * 0.4, width: w * 0.6, height: h * 0.1)
    }

}
