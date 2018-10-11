//
//  JKAppManager.swift
//  BaseFramework
//
//  Created by 贾则栋 on 2018/8/8.
//  Copyright © 2018年 贾则栋. All rights reserved.
//

import UIKit

class JKAppManager: NSObject {
    
    // 创建单例
    static let sharedInstance = JKAppManager()
    // 设置初始化方法为私有，防止报错
    private override init() {
        
    }
    
    // 选择根控制器
    func chooseRootVC(window: UIWindow) {
        window.rootViewController = JKTabBarController(viewControllers: self.viewControllers(), tabBarItemsAttributes: self.tabBarItemsAttributesForController())
    }
    
    // APP初始化
    func initAppWithApplication(application: UIApplication, launchOptions: [UIApplicationLaunchOptionsKey: Any]?) {
        
    }
    
    // 跳转到主页
    func jumpToMainVC(window: UIWindow) {
        window.rootViewController = JKTabBarController()
    }
    
    // 跳转到登录
    func jumpToLoginVC(window: UIWindow) {
        window.rootViewController = JKLoginViewController()
    }
    
    func viewControllers() -> [UINavigationController]{
        let home = UINavigationController(rootViewController: JKHomeViewController())
        let connection = UINavigationController(rootViewController: JKLifeViewController())
        let message = UINavigationController(rootViewController: JKMessageViewController())
        let personal =   UINavigationController(rootViewController: JKMineViewController())
        let viewControllers = [home, connection, message, personal]
        
        return viewControllers
        
    }
    
    
    func tabBarItemsAttributesForController() ->  [[String : String]] {
        
        let tabBarItemOne = [CYLTabBarItemTitle:"首页",
                             CYLTabBarItemImage:"icon_menu_home",
                             CYLTabBarItemSelectedImage:"icon_menu_home_fill"]
        
        let tabBarItemTwo = [CYLTabBarItemTitle:"同城",
                             CYLTabBarItemImage:"icon_menu_life",
                             CYLTabBarItemSelectedImage:"icon_menu_life_fill"]
        
        let tabBarItemThree = [CYLTabBarItemTitle:"消息",
                               CYLTabBarItemImage:"icon_menu_circle",
                               CYLTabBarItemSelectedImage:"icon_menu_circle_fill"]
        
        let tabBarItemFour = [CYLTabBarItemTitle:"我的",
                              CYLTabBarItemImage:"icon_menu_mine",
                              CYLTabBarItemSelectedImage:"icon_menu_mine_fill"]
        let tabBarItemsAttributes = [tabBarItemOne,tabBarItemTwo,tabBarItemThree,tabBarItemFour]
        return tabBarItemsAttributes
    }
}
