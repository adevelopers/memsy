//
//  ViewController.swift
//  Memsy
//
//  Created by Kirill Khudyakov on 29.11.17.
//  Copyright © 2017 adeveloper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var memImageView: UIImageView!
    
    @IBAction func refreshButtonAction(_ sender: Any) {
        print("КАртинка обновилась")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        memImageView.image = #imageLiteral(resourceName: "mem2")
        memImageView.contentMode = .scaleAspectFit
        
        let Mwidth = UIScreen.main.bounds.width
        let Mheight = UIScreen.main.bounds.height
        print(Mwidth, Mheight)
        
        let red = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        
        
        red.backgroundColor = .red
        red.center = CGPoint(x: 251, y: 508)
        self.view.addSubview(red)
        
    }

}
