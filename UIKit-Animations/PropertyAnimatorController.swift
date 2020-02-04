//
//  PropertyAnimatorController.swift
//  UIKit-Animations
//
//  Created by Liubov Kaper  on 2/4/20.
//  Copyright © 2020 Luba Kaper. All rights reserved.
//

import UIKit

class PropertyAnimatorController: UIViewController {
    
    
    
    @IBOutlet weak var duckImage: UIImageView!
    
    
    @IBOutlet weak var slider: UISlider!
    
    // need an instance of UIViewPropertyAnimator
    
    private var animator: UIViewPropertyAnimator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // instantiate an animator propery
        animator = UIViewPropertyAnimator(duration: 2.0, curve: .easeInOut, animations: {
            // here we declare animation
            // perform a transform
            // if we increase the Y also, it will grow in size proportionally, with X it is only stratches horizontally
            self.duckImage.transform = CGAffineTransform(scaleX: 3.0, y: 1.0)
        })

        
    }
    

   
    @IBAction func sizeChangeSloder(_ sender: UISlider) {
        
        animator.fractionComplete = CGFloat(sender.value)
    }
    
}
