//
//  ViewController.swift
//  Memsy
//
//  Created by Kirill Khudyakov on 29.11.17.
//  Copyright © 2017 adeveloper. All rights reserved.
//

import UIKit
import SnapKit

class AppColors {
    static let firstColor: UIColor = #colorLiteral(red: 0.962474525, green: 0.9660497308, blue: 0.9782558084, alpha: 1)
}


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
        print("\(#function)")
        
        //        работаем с мемконтейнер
        memContainer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        memContainer.layer.cornerRadius = 10
        
        //        работаем с тенью мемконтейнера
        memContainer.layer.shadowOffset = CGSize(width: 0, height: 5)
        memContainer.layer.shadowOpacity = 0.5
        memContainer.layer.shadowRadius = 2
        
        //        работаем с картинкой в мемконтейнере
        memImageView.image = #imageLiteral(resourceName: "mem2")
        memImageView.contentMode = .scaleAspectFit
        
//        работаем с кнопкой #imageLiteral(resourceName: "nope")
        nopeButton = UIButton(frame: CGRect.zero)
        let nopeImage = UIImage(named: "nope")!.withRenderingMode(.alwaysOriginal)
        nopeButton.setImage(nopeImage, for: .normal)
        nopeButton.contentMode = .scaleAspectFit
        nopeButton.layer.cornerRadius = buttonSize / 2
        nopeButton.layer.masksToBounds = false
        nopeButton.backgroundColor = UIColor.white
        
        //        работаем с тенью nopeButton
        nopeButton.layer.shadowOffset = CGSize(width: 0, height: 5)
        nopeButton.layer.shadowOpacity = 0.5
        nopeButton.layer.shadowRadius = 2
        
        
        view.addSubview(nopeButton)
        
//        работаем с кнопкой #imageLiteral(resourceName: "rewind")
        rewindButton = UIButton(frame: CGRect.zero)
        let rewindImage = UIImage(named: "rewind")!.withRenderingMode(.alwaysOriginal)
        rewindButton.setImage(rewindImage, for: .normal)
        rewindButton.contentMode = .scaleAspectFill
        rewindButton.layer.cornerRadius = buttonSize / 2
        rewindButton.layer.masksToBounds = false
        rewindButton.backgroundColor = UIColor.white
        
        //        работаем с тенью rewindButton
        rewindButton.layer.shadowOffset = CGSize(width: 0, height: 5)
        rewindButton.layer.shadowOpacity = 0.5
        rewindButton.layer.shadowRadius = 2
        
        view.addSubview(rewindButton)
        
//        работаем с градиентом основного фона
        gradientLayer = CAGradientLayer()
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        gradientLayer.frame = UIScreen.main.bounds
        gradientLayer.colors = [AppColors.firstColor.cgColor, UIColor.gray.cgColor]
        
        view.layer.insertSublayer(gradientLayer, at: 0)
        
        // constrains кнопок
        
        //        nopeButton
        nopeButton.snp.makeConstraints { set in
            set.width.height.equalTo(50)
            set.right.equalTo(view).offset(-19)
            set.bottom.equalTo(view).offset(-10)
        }
        //        rewindButton
        rewindButton.snp.makeConstraints { set in
            set.width.height.equalTo(50)
            set.left.equalTo(view).offset(23)
            set.bottom.equalTo(view).offset(-10)
        }
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("\(#function)")
        
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
        
        
        //        gradientLayer.frame = self.view.bounds
        //
        //        print(view.bounds)
        //        // рисуем нашу nope кнопку согласно нового разрешения
        //        let nopeButtonFrame = CGRect(
        //            x: memContainer.frame.origin.x,
        //            y: mainHeight - buttonSize - 10,
        //            width: buttonSize,
        //            height: buttonSize)
        //        nopeButton.frame = nopeButtonFrame
        //
        //
        //        // рисуем нашу rewind кнопку согласно нового разрешения
        //        let rewindFrame = CGRect(
        //            x: memContainer.frame.origin.x +
        //                memContainer.frame.size.width - buttonSize,
        //            y: mainHeight - buttonSize - 10,
        //            width: buttonSize,
        //            height: buttonSize)
        //        rewindButton.frame = rewindFrame
    }
}

