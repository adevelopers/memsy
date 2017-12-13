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
    }

}
