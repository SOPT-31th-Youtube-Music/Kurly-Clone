//
//  TabBarViewController.swift
//  Market-Kurly
//
//  Created by 이승헌 on 2022/11/27.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    var index = 0 {
        didSet {
            self.selectedIndex = index
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // setUI
        self.view.backgroundColor = .white
        self.selectedIndex = index
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
        
        viewControllers.forEach {
            $0.navigationBar.isHidden = true
        }
        
        self.setViewControllers(viewControllers, animated: false)
        
        let imageNames = [
            "house",
            "line.3.horizontal",
            "magnifyingglass",
            "person"
        ]
        
        for (index, value) in (tabBar.items?.enumerated())! {
            let tabBarItem: UITabBarItem = value as UITabBarItem
            
            tabBarItem.image = UIImage(systemName:  imageNames[index])?.withRenderingMode(.alwaysOriginal)
            tabBarItem.selectedImage = tabBarItem.image?.withTintColor(.mainColor)
        }
    }
}
