//
//  ViewController.swift
//  Memsy
//
//  Created by Kirill Khudyakov on 29.11.17.
//  Copyright © 2017 adeveloper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var memContainer: UIView!
    @IBOutlet weak var memImageView: UIImageView!
    
    var gradientView: UIView!
    var gradientLayer:CAGradientLayer!
    var nopeButton: UIButton!
    var rewindButton: UIButton!
    
    let mainWidth = UIScreen.main.bounds.width
    let mainHeight = UIScreen.main.bounds.height
    let buttonSize: CGFloat = 50.0
    
    @IBAction func refreshButtonAction(_ sender: Any) {
        print("Картинка обновилась")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        memImageView.image = #imageLiteral(resourceName: "mem2")
        memImageView.contentMode = .scaleAspectFit
        
        nopeButton = UIButton(frame: CGRect.zero)
        let nopeImage = UIImage(named: "nope")!.withRenderingMode(.alwaysOriginal)
        nopeButton.setImage(nopeImage, for: .normal)
        nopeButton.contentMode = .scaleAspectFit
        nopeButton.layer.cornerRadius = buttonSize / 2
        nopeButton.layer.masksToBounds = true
        nopeButton.backgroundColor = UIColor.white
        view.addSubview(nopeButton)
        
        
        rewindButton = UIButton(frame: CGRect.zero)
        let rewindImage = UIImage(named: "rewind")!.withRenderingMode(.alwaysOriginal)
        rewindButton.setImage(rewindImage, for: .normal)
        rewindButton.contentMode = .scaleAspectFill
        rewindButton.layer.cornerRadius = buttonSize / 2
        rewindButton.layer.masksToBounds = true
        rewindButton.backgroundColor = UIColor.white
        view.addSubview(rewindButton)
        
//        gradientView.backgroundColor = UIColor.gray
        
        gradientLayer = CAGradientLayer()
//        view.layer.insertSublayer(gradientLayer, at: 0)
        
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0	, y: 1)
        
        let startColor = UIColor.white.cgColor
        let endColor = UIColor(red: 243.0 / 255.0, green: 244.0 / 255.0, blue: 248.0 / 255.0, alpha: 1.0)
        
        gradientLayer.colors = [startColor, endColor]
        
        view.layer.insertSublayer(gradientLayer, at: 0)
        
//        gradientLayer.locations = []
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

//        //получаем максимальную координату по ширине и высоте
//        let mainWidth = UIScreen.main.bounds.width
//        let mainHeight = UIScreen.main.bounds.height
//
//        //находим коэффициент на который надо умножить для нового разрешения
//        let CoefX = 320 / mainWidth
//        let CoefY = 568 / mainHeight
//
//        // рисуем нашу nope кнопку согласно нового разрешения
//        let nopeButtonFrame = CGRect(
//            x: 251 * CoefX,
//            y: 508 * CoefY,
//            width: 50 * CoefX,
//            height: 50 * CoefY)
//        nopeButton.frame = nopeButtonFrame
//
//        // рисуем нашу rewind кнопку согласно нового разрешения
//        let rewindFrame = CGRect(
//            x: 23 * CoefX,
//            y: 508 * CoefY,
//            width: 50 * CoefX,
//            height: 50 * CoefY)
//        rewindButton.frame = rewindFrame
        
        //получаем максимальную координату по ширине и высоте
//        myGradientLayer.startPoint = CGPoint(x:0, y:0)
//        myGradientLayer.endPoint = CGPoint(x:0, y:1)
        
        
        gradientLayer.frame = view.bounds
        
        // рисуем нашу nope кнопку согласно нового разрешения
        let nopeButtonFrame = CGRect(
            x: memContainer.frame.origin.x,
            y: mainHeight - buttonSize - 10,
            width: buttonSize,
            height: buttonSize)
        nopeButton.frame = nopeButtonFrame
        
        
        // рисуем нашу rewind кнопку согласно нового разрешения
        let rewindFrame = CGRect(
            x: memContainer.frame.origin.x +
                memContainer.frame.size.width - buttonSize,
            y: mainHeight - buttonSize - 10,
            width: buttonSize,
            height: buttonSize)
        rewindButton.frame = rewindFrame
    }
}

