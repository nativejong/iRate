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
    var rate : iRate?
    var val : UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.edgesForExtendedLayout = []
        
        val = UIButton(frame: CGRect.zero )
        val?.backgroundColor = UIColor.black
        self.view.addSubview(val!)

        rate = iRate(frame: CGRect.zero, bg: UIColor.black, fg: UIColor.red)
        self.view.addSubview(rate!)
        self.view.backgroundColor = UIColor.white
                
        rate?.watchAction(1.2, rating: { (rv : CGFloat) -> Bool in
            print( String( format: "value %f", rv ) )
            self.val?.setTitle(String( format: "%.2f", rv ), for: UIControl.State.normal)
            return( true )
        })
    }
    

    override func viewWillLayoutSubviews() {
        let w = self.view.frame.size.width;
        let h = self.view.frame.size.height;
        rate?.frame = CGRect(x: w * 0.2, y: h * 0.3, width: w * 0.6, height: h * 0.1)
        val?.frame = CGRect(x: w * 0.2, y: h * 0.45, width: w * 0.6, height: h * 0.1)
    }

}
