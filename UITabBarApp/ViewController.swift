//
//  ViewController.swift
//  UITabBarApp
//
//  Created by Shrawan Shinde on 18/01/17.
//  Copyright © 2017 Shrawan Shinde. All rights reserved.
//

import UIKit

class ViewController:UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create Tab one
        let tabOne = FirstTabViewController()
        let tabOneBarItem = UITabBarItem(title: "HOME", image: UIImage(named: "ico_home.png"), selectedImage: UIImage(named: "ico_home.png"))
        
        tabOne.tabBarItem = tabOneBarItem
        
        
        // Create Tab two
        let tabTwo = SecondTabViewController()
        let tabTwoBarItem2 = UITabBarItem(title: "SEARCH", image: UIImage(named: "ico_search.png"), selectedImage: UIImage(named: "ico_search.png"))
        
        tabTwo.tabBarItem = tabTwoBarItem2
        
        
        self.viewControllers = [tabOne, tabTwo]
    }
    
    // UITabBarControllerDelegate method
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected \(viewController.title!)")
    }


}

