//
//  SFTabBarController.swift
//  meifabao
//
//  Created by 花菜 on 2017/9/24.
//  Copyright © 2017年 花菜. All rights reserved.
//

import UIKit

class SFTabBarController: UITabBarController {

    lazy var dataArray: [(String, String, UIViewController.Type)] = {
        let dataArray: [(String, String, UIViewController.Type)] = [
            ("首页", "1", SFHomeViewController.self),
            ("发型", "2", SFShowViewController.self),
            ("预约", "3", SFShopViewController.self),
            ("我的", "4", SFProfileViewController.self)
        ]
        return dataArray
    }()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        addViewControllers()
    }

    func addViewControllers() {
       viewControllers = dataArray.map { (title,imageName,viewController) -> SFNavigationController in
            let vc = viewController.init()
            vc.tabBarItem.title = title
            vc.tabBarItem.image = UIImage(named: "icon_bar_" + imageName + "_n")
            vc.tabBarItem.selectedImage = UIImage(named: "icon_bar_" + imageName + "_h")
            vc.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.coler(hex: 0xfa6556)], for: .selected)
            return SFNavigationController(rootViewController: vc)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}
