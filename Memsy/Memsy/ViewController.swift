//
//  ViewController.swift
//  Memsy
//
//  Created by Kirill Khudyakov on 29.11.17.
//  Copyright © 2017 adeveloper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Core Graphics Rectangle
    
        let SizeTuples: [(alfa: CGFloat, w:Int, h:Int)] = [(alfa:0.25,w:300,h:650),(alfa:0.35,w:200,550),(alfa:0.40,125,450),(alfa:1,50,50)]
       
        for step in SizeTuples {
        let viewGreen4 = UIView(frame: CGRect(x: 0, y: 0, width: step.w, height: step.h))
        viewGreen4.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        viewGreen4.center = view.center
            viewGreen4.alpha = step.alfa
        self.view.addSubview(viewGreen4)
                                }
    }
}
