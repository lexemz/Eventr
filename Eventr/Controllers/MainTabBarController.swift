//
//  MainTabBarController.swift
//  Eventr
//
//  Created by Igor on 02.02.2022.
//

import UIKit

final class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupTabBar()
    }
    
    func setupTabBar() {
        
        let mainVC = createNavigationController(vc: MainCategoryListViewController(), itemName: "Events", itemImage: "house")
        let settingsVC = createNavigationController(vc: AppSettingsTableViewController(), itemName: "Settings", itemImage: "gear")
        
        viewControllers = [mainVC, settingsVC]
    }
    

    private func createNavigationController(vc: UIViewController, itemName: String, itemImage: String) -> UINavigationController {
        let item = UITabBarItem(title: itemName, image: UIImage(systemName: itemImage), tag: 0)
        
        let navigationController = UINavigationController(rootViewController: vc)
        navigationController.tabBarItem = item
        
        return navigationController
    }
}
