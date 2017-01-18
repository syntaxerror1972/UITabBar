//
//  SecondTabViewController.swift
//  UITabBarApp
//
//  Created by Shrawan Shinde on 18/01/17.
//  Copyright © 2017 Shrawan Shinde. All rights reserved.
//

import UIKit

class SecondTabViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.title = "SEARCH"
        self.view.backgroundColor=UIColor.white
        let navBar: UINavigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: getWindowWidth(), height: 60))
        self.view.addSubview(navBar);
        let navItem = UINavigationItem(title: "Navigation Bar");
        let doneItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: nil, action: "backClick");
        navItem.rightBarButtonItem = doneItem;
        navBar.setItems([navItem], animated: false);
        
        self.view.addSubview(navBar)
        
        
    }
    
   
    func backClick(){
        
        //Write button action here
        var alertView = UIAlertView();
        alertView.addButton(withTitle: "Ok");
        alertView.title = "Alert";
        alertView.message = "backClick Button Clicked";
        alertView.show();
        
    }
    
 
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
