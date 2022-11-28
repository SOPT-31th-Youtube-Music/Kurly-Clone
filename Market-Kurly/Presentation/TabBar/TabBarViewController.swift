//
//  TabBarViewController.swift
//  Market-Kurly
//
//  Created by 이승헌 on 2022/11/27.
//

import UIKit

class KurlyTabBar: UITabBar {
    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemeted")
    }
}

class TabBarViewController: UITabBarController {
    
    var index = 0 {
        didSet {
            self.selectedIndex = index
        }
    }
    
    private let kurlyTabBar: KurlyTabBar = KurlyTabBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // setUI
        self.view.backgroundColor = .white
        self.selectedIndex = index
        self.setValue(kurlyTabBar, forKey: "tabBar")
        object_setClass(self.tabBar, KurlyTabBar.self)
        self.tabBar.itemPositioning = .centered
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let homeViewController = HomeViewController()
        let homeViewNavigationController = UINavigationController(rootViewController: homeViewController)
        
        let menuViewController = MenuViewController()
        let menuViewNavigationController = UINavigationController(rootViewController: menuViewController)
        
        let searchViewController = SearchViewController()
        let searchViewNavigationController = UINavigationController(rootViewController: searchViewController)
        
        let profileViewController = ProfileViewController()
        let profileViewNavigationController = UINavigationController(rootViewController: profileViewController)
        
        let viewControllers = [
            homeViewNavigationController,
            menuViewNavigationController,
            searchViewNavigationController,
            profileViewNavigationController
        ]
        
        self.setViewControllers(viewControllers, animated: true)
        
        let tabBar: UITabBar = self.tabBar
        tabBar.backgroundColor = .white
        tabBar.barStyle = UIBarStyle.default
        tabBar.barTintColor = .white
        
        let imageNames = [
            "home",
            "menu",
            "magnifier",
            "user"
        ]
        
        let imageSelectedNames = [
            "home",
            "menu",
            "magnifier",
            "user"
        ]
        
        for (index, value) in (tabBar.items?.enumerated())! {
            let tabBarItem: UITabBarItem = value as UITabBarItem
            
            tabBarItem.image = UIImage(named: imageNames[index])?.withRenderingMode(.alwaysOriginal)
            tabBarItem.selectedImage = UIImage(named: imageSelectedNames[index])?.withRenderingMode(.alwaysOriginal)
            tabBarItem.accessibilityIdentifier = imageNames[index]
        }
    }
}
