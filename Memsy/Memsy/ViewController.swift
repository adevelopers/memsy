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
        
        
        let viewGreen4 = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 650))
        viewGreen4.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        viewGreen4.center = view.center
        viewGreen4.alpha = 0.25
        self.view.addSubview(viewGreen4)
        
        let viewGreen3 = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 550))
        viewGreen3.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        viewGreen3.center = view.center
        viewGreen3.alpha = 0.35
        self.view.addSubview(viewGreen3)
        
        let viewGreen2 = UIView(frame: CGRect(x: 0, y: 0, width: 125, height: 450))
        viewGreen2.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        viewGreen2.center = view.center
        viewGreen2.alpha = 0.40
        self.view.addSubview(viewGreen2)
        
        let viewGreen = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        viewGreen.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        viewGreen.center = view.center
        viewGreen.alpha = 1
        self.view.addSubview(viewGreen)
    }
}
