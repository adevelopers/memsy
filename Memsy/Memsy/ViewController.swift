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
//для nope
        let nopeCoefX = mainWidth / 320
        let nopeCoefY = mainHeight / 568
//для rewind
        let rewindCoefX = mainWidth / 23
        let rewindCoefY = mainHeight / 508
//        print(mainWidth, mainHeight)
//        print(nopeCoefX, nopeCoefY)
        
// рисуем нашу nope кнопку согласно нового разрешения
        let nopeButton = UIButton(frame: CGRect(x: 320*nopeCoefX, y: 568*nopeCoefY, width: 50*nopeCoefX, height: 50*nopeCoefY))
// рисуем нашу rewind кнопку согласно нового разрешения
        let rewindButton = UIButton(frame: CGRect(x: 23*rewindCoefX, y: 508*rewindCoefY, width: 50*rewindCoefX, height: 50*rewindCoefY))
//        red.setImage(image, for: .normal)
//устанавливаем нашу картинку nope в качестве заднего фона кнопки nope
        nopeButton.setBackgroundImage(#imageLiteral(resourceName: "nope"), for: .normal)
//устанавливаем нашу картинку rewind в качестве заднего фона кнопки rewind
        rewindButton.setBackgroundImage(#imageLiteral(resourceName: "Rewind"), for: .normal)
        print(rewindButton.backgroundImage)
//        red.imageView?.contentMode = .scaleAspectFit
//задаем свойство масштабировать на всю площадь кнопки
        nopeButton.contentMode = .scaleAspectFit
        rewindButton.contentMode = .scaleAspectFill
//добавляем на наш view nopeButton
        self.view.addSubview(nopeButton)
 //добавляем на наш view rewindButton
        self.view.addSubview(rewindButton)
        print(nopeButton)
    }
}

