//
//  AnimationsTabController.swift
//  UIKit-Animations
//
//  Created by Liubov Kaper  on 2/2/20.
//  Copyright © 2020 Luba Kaper. All rights reserved.
//

import UIKit

class AnimationsTabController: UITabBarController {
    
    //  settoin gup tabbaritems for viewcontrollers inside tabbarcontroller
    private lazy var sampleAnimationsVC: SampleAnimationsController = {
       let viewcontroller = SampleAnimationsController()
        viewcontroller.tabBarItem = UITabBarItem(title: "Sample Animations", image: UIImage(systemName: "1.circle"), tag: 0)
        return viewcontroller
    }()
    
    private lazy var constraintsAnimationVC: ConstraintsAnimationController = {
        // ConstraintsAnimationController instance ffrom storyboard(not programattically)
        let cnstraintsAnimationStoryboard = UIStoryboard(name: "ConstraintsAnimation", bundle: nil)
        guard let vieiwcontroller = cnstraintsAnimationStoryboard.instantiateViewController(withIdentifier: "ConstraintsAnimationController") as? ConstraintsAnimationController else {
            fatalError("could not load VonstraintsAnimationController")
        }
        vieiwcontroller.tabBarItem = UITabBarItem(title: "Constraints Animation", image: UIImage(systemName: "2.circle"), tag: 1)
        return vieiwcontroller
    }()
    
    private lazy var transitionAnimationVC: TransitionAnimationsController = {
        // ConstraintsAnimationController instance ffrom storyboard(not programattically)
        let transitionAnimationStoryboard = UIStoryboard(name: "TransitionAnimations", bundle: nil)
        guard let vieiwcontroller = transitionAnimationStoryboard.instantiateViewController(withIdentifier: "TransitionAnimationsController") as? TransitionAnimationsController else {
            fatalError("could not load TransitionAnimationController")
        }
        vieiwcontroller.tabBarItem = UITabBarItem(title: "Transitition Animation", image: UIImage(systemName: "3.circle"), tag: 2)
        return vieiwcontroller
    }()
    
    private lazy var propertyAnimatorVC: PropertyAnimatorController = {
        // ConstraintsAnimationController instance ffrom storyboard(not programattically)
        let propertyAnimatorStoryboard = UIStoryboard(name: "PropertyAnimator", bundle: nil)
        guard let vieiwcontroller = propertyAnimatorStoryboard.instantiateViewController(withIdentifier: "PropertyAnimatorController") as? PropertyAnimatorController else {
            fatalError("could not load PropertyAnimatorController")
        }
        vieiwcontroller.tabBarItem = UITabBarItem(title: "Property Animator", image: UIImage(systemName: "4.circle"), tag: 3)
        return vieiwcontroller
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // set view controllers for the tab bar
        // in our lab we will have 2 tabs
        
        viewControllers = [sampleAnimationsVC, constraintsAnimationVC, transitionAnimationVC, propertyAnimatorVC]
    }
    


}
