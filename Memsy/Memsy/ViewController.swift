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
//получаем максимальную координату по ширине и высоте
        let mainWidth = UIScreen.main.bounds.width
        let mainHeight = UIScreen.main.bounds.height
//находим коэффициент на который надо умножить для нового разрешения
        let coefX = mainWidth / 320
        let coefY = mainHeight / 568
        print(mainWidth, mainHeight)
        print(coefX, coefY)
// рисуем нашу кнопку согласно нового разрешения
        let nopeButton = UIButton(frame: CGRect(x: 320*coefX, y: 568*coefY, width: 60*coefX, height: 60*coefY))

//        red.setImage(image, for: .normal)
        nopeButton.setBackgroundImage(#imageLiteral(resourceName: "nope"), for: .normal)
//        red.imageView?.contentMode = .scaleAspectFit
        nopeButton.contentMode = .scaleAspectFit
        
        self.view.addSubview(nopeButton)
        
    }

}

