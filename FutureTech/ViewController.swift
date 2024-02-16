//
//  ViewController.swift
//  FutureTech
//
//  Created by Emre Çetinkaya on 31.01.2024.
//

import UIKit
import SnapKit
class ViewController: UIViewController {
    let appName = UILabel()
    let currentDate = UILabel()
    let statusConnectedDevices = UILabel()
    let turnOnButton = UIButton()
    let turnOffButton = UIButton()
    let containerView = UIView()
    let devicesOne = UIImageView()
    let devicesTwo = UIImageView()
    let futureAppDefaultPic = UIImageView()
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        view.backgroundColor = .blue
        
        
       
        appName.textColor = .white
        appName.text = "Future App"
        view.addSubview(appName)
        appName.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(-50)
            make.height.width.equalTo(250)
            make.right.equalTo(self.view).offset(10)
            
            
            
        }
        
        let today = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy"
    
        
        currentDate.textColor = .systemMint
        currentDate.text = dateFormatter.string(from: today)
        view.addSubview(currentDate)
        currentDate.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(-16)
            make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing).offset(-16)
        }
        
        containerView.backgroundColor = UIColor.lightGray
        containerView.layer.cornerRadius = 20
        view.addSubview(containerView)
        containerView.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(150)
            make.width.height.equalTo(350)
     
        }
        
        
    
        
        
        devicesOne.contentMode = .scaleAspectFit
        containerView.addSubview(devicesOne)
  
        devicesTwo.contentMode = .scaleAspectFit
       
        containerView.addSubview(devicesTwo)
        
        devicesOne.snp.makeConstraints { make in
            make.leading.top.bottom.equalToSuperview()
            make.width.equalTo(containerView.snp.width).multipliedBy(0.5)
            
        }
        devicesTwo.snp.makeConstraints{ make in
            make.trailing.top.bottom.equalToSuperview()
            make.width.equalTo(containerView.snp.width).multipliedBy(0.5)
        }
        
        statusConnectedDevices.textColor = .white
        statusConnectedDevices.text = "Status:  "
        statusConnectedDevices.backgroundColor = .black
        statusConnectedDevices.layer.cornerRadius = 20
        view.addSubview(statusConnectedDevices)
        
        statusConnectedDevices.snp.makeConstraints { make in
            make.bottom.equalTo(containerView).offset(300)
            make.centerX.equalToSuperview()
        }
        
        turnOnButton.tintColor = .black
        turnOnButton.backgroundColor = .green
        turnOnButton.setTitle("Turn On", for: .normal)
        turnOnButton.setTitleColor(.white, for: .normal)
        turnOnButton.addTarget(self, action: #selector(turnOnClicked), for: .touchUpInside )
        view.addSubview(turnOnButton)
        turnOnButton.snp.makeConstraints { make in
            make.bottom.equalTo(containerView).offset(50)
            make.left.equalToSuperview().offset(70)
            make.height.equalTo(30)
            make.width.equalTo(70)
        }
        
        turnOffButton.backgroundColor = . red
        turnOffButton.setTitle("Turn Off", for: .normal)
        turnOffButton.setTitleColor(.white, for: .normal)
        turnOffButton.addTarget(self, action: #selector(turnOffClicked), for: .touchUpInside)
        view.addSubview(turnOffButton)
        turnOffButton.snp.makeConstraints{ make in
            make.bottom.equalTo(containerView).offset(50)
            make.right.equalToSuperview().offset(-70)
            make.height.equalTo(30)
            make.width.equalTo(70)
            
        }
        
        
       
        futureAppDefaultPic.image = UIImage(named: "future")
        futureAppDefaultPic.contentMode = .scaleToFill
        futureAppDefaultPic.clipsToBounds = true
        view.addSubview(futureAppDefaultPic)
        futureAppDefaultPic.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }

        
        view.bringSubviewToFront(appName)
        view.bringSubviewToFront(currentDate)
        view.bringSubviewToFront(containerView)
        view.bringSubviewToFront(statusConnectedDevices)
        view.bringSubviewToFront(turnOnButton)
        view.bringSubviewToFront(turnOffButton)

    
        
        
    }
    @objc func turnOnClicked() {
     statusConnectedDevices.textColor = .green
     statusConnectedDevices.text = "Status: On "
     devicesOne.image = UIImage(named:"Cam1.png")
     devicesTwo.image = UIImage(named:"Cam2.png")
 }

    
    @objc func turnOffClicked() {
        statusConnectedDevices.text = "Status: Off "
        statusConnectedDevices.textColor = .red
        devicesOne.image = UIImage(named: "images.png")
        devicesTwo.image = UIImage(named: "images.png")
    }
}



