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
        let mWidth = UIScreen.main.bounds.width
        let mHeight = UIScreen.main.bounds.height
//находим коэффициент на который надо умножить для нового разрешения
        let coefX = mWidth / 320
        let coefY = mHeight / 568
        print(mWidth, mHeight)
        print(coefX, coefY)
// рисуем нашу кнопку согласно нового разрешения
        let red = UIButton(frame: CGRect(x: 251*coefX, y: 508*coefY, width: 50*coefX, height: 50*coefY))
        
        
//        red.backgroundColor = .red
        red.imageView?.image = #imageLiteral(resourceName: "nope")
         red.contentMode = .scaleAspectFit
//добавляем ее на наш View
        self.view.addSubview(red)
        
    }

}

