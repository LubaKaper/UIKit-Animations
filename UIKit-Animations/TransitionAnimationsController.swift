//
//  TransitionAnimationsController.swift
//  UIKit-Animations
//
//  Created by Liubov Kaper  on 2/4/20.
//  Copyright © 2020 Luba Kaper. All rights reserved.
//

import UIKit

class TransitionAnimationsController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    private lazy var tapGesture: UITapGestureRecognizer = {
        let gesture = UITapGestureRecognizer()
        gesture.addTarget(self, action: #selector(animate))
        return gesture
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = UIImage(named: "dog")
        imageView.backgroundColor = .systemGreen
        
        // enabele user interaction on an image view or a label as those 2 UI elements are set to false to by default
        imageView.isUserInteractionEnabled = true
        
        // add gesture to the image view
        imageView.addGestureRecognizer(tapGesture)
    }
    

    @objc private func animate() {
        
        if imageView.image == UIImage(named: "dog") {
            // instead of hard coding, we sert a varible here
            let duration: Double = 3.0
            // curve is uneven duration(there are 4 types of curves), we add it to options array
            let curveOption: UIView.AnimationOptions = .curveEaseInOut
            
            UIView.transition(with: imageView, duration: duration, options: [.transitionFlipFromRight, curveOption], animations: {
                self.imageView.image = UIImage(named: "cat")
                self.imageView.backgroundColor = .systemTeal
            }, completion: nil)
        } else {
            UIView.transition(with: imageView, duration: 1.0, options: [.transitionFlipFromLeft], animations: {
                self.imageView.image = UIImage(named: "dog")
                self.imageView.backgroundColor = .systemGreen
            }, completion: nil)
        }
    }

}
