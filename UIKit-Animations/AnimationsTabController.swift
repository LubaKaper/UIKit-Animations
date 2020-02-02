//
//  AnimationsTabController.swift
//  UIKit-Animations
//
//  Created by Liubov Kaper  on 2/2/20.
//  Copyright © 2020 Luba Kaper. All rights reserved.
//

import UIKit

class AnimationsTabController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // set view controllers for the tab bar
        // in our lab we will have 2 tabs
        
        viewControllers = [SampleAnimationsController(), ConstraintsAnimationController()]
    }
    


}
