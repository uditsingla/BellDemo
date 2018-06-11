//
//  ViewController.swift
//  CustomTabbar
//
//  Created by Abhishek Singla on 31/05/18.
//  Copyright © 2018 Abhishek Singla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tabbar: UITabBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let array = self.tabbar?.items
        for (index,controller) in (array?.enumerated())! {
            if index == 0 {
            //controller.titlePositionAdjustment.vertical = -5.0
            }
            //controller.imageInsets = UIEdgeInsets(top: -5, left: 0, bottom: -6, right: 0)
        }
        let middleButton = UIButton()
        
        middleButton.setTitle("BELL", for: .normal)
        middleButton.frame.size = CGSize(width: 50, height: 50)
        middleButton.backgroundColor = .blue
        middleButton.layer.cornerRadius = middleButton.frame.size.width/2
        middleButton.layer.masksToBounds = true
        middleButton.center = CGPoint(x: UIScreen.main.bounds.width / 2, y:
            UIScreen.main.bounds.height - 50)
        view.addSubview(middleButton)

        
//        self.tabbar.selectedItem?.imageInsets = UIEdgeInsets(top: 200, left: 0, bottom: -6, right: 0);
//        self.tabbar.tabBarItem.imageInsets = UIEdgeInsets(top: 200, left: 0, bottom: -6, right: 0)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

