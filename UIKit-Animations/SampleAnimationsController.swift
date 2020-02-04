//
//  SampleAnimationsController.swift
//  UIKit-Animations
//
//  Created by Liubov Kaper  on 2/2/20.
//  Copyright © 2020 Luba Kaper. All rights reserved.
//

import UIKit

class SampleAnimationsController: UIViewController {
    
    private let sampleAnimationsView = SampleAnimationView()
    
    override func loadView() {
        view = sampleAnimationsView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor  = .systemBackground
    }
    

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
       //scaleAnimation()
        pulsatingAnimation()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        scaleAnimation()
    }
   
    
    private func scaleAnimation() {
        // properties we could animate:
        // - alpha
        // - corner radius
        // - position
        // - center
        // - transitions: scale, rotate, translate
        // - color, shadow, opacity
        UIView.animate(withDuration: 3.0) {
            UIView.animate(withDuration: 0.3, delay: 0.0, options: [], animations: {
                self.sampleAnimationsView.pursusitLogo.transform =
                    // any transform value of 1.0 represents the identity of the view
                    CGAffineTransform(scaleX: 5.0, y: 5.0)
                self.sampleAnimationsView.pursusitLogo.alpha = 0.0
            }) { (done) in
                // gets called after initial animation is done
                UIView.animate(withDuration: 1.0) {
                    self.sampleAnimationsView.swiftLogo.isHidden = false
                    self.sampleAnimationsView.swiftLogo.layer.cornerRadius = self.sampleAnimationsView.swiftLogo.bounds.size.width / 2.0
        
                }
            }
        }
    }
    
    private func pulsatingAnimation() {
        UIView.animate(withDuration: 0.3, delay: 0.0, options: [.repeat, .autoreverse], animations: {
            // animation block
            self.sampleAnimationsView.pursusitLogo.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        }) { (done) in
            //code to be executed after animation is complete
            // options: can reset view's values, or you can create next animation
            UIView.animate(withDuration: 0.3) {
                self.sampleAnimationsView.pursusitLogo.transform = CGAffineTransform.identity // restores back to original state
            }
            // NB: if you want to go beyond creating an animation in this completion handler the better choice would be animateKeyFrames()
        }
       }

}
