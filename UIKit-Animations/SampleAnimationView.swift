//
//  SampleAnimationView.swift
//  UIKit-Animations
//
//  Created by Liubov Kaper  on 2/2/20.
//  Copyright © 2020 Luba Kaper. All rights reserved.
//

import UIKit

class SampleAnimationView: UIView {
    
    public lazy var pursusitLogo: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "pursuit-logo")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    public lazy var swiftLogo: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "swift-logo")
        imageView.contentMode = .scaleAspectFit
        imageView.isHidden = true
        imageView.clipsToBounds = true
        return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
       setupPursuitLogoConstraints()
        setupSwiftLogoConstraints()
    }

    
    private func setupPursuitLogoConstraints() {
       addSubview(pursusitLogo)
        pursusitLogo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pursusitLogo.centerXAnchor.constraint(equalTo: centerXAnchor),
            pursusitLogo.centerYAnchor.constraint(equalTo: centerYAnchor),
            pursusitLogo.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5),
            pursusitLogo.heightAnchor.constraint(equalTo: pursusitLogo.widthAnchor) // square
        ])
    }
    
    private func setupSwiftLogoConstraints() {
          addSubview(swiftLogo)
           swiftLogo.translatesAutoresizingMaskIntoConstraints = false
           NSLayoutConstraint.activate([
               swiftLogo.centerXAnchor.constraint(equalTo: centerXAnchor),
               swiftLogo.centerYAnchor.constraint(equalTo: centerYAnchor),
               swiftLogo.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5),
               swiftLogo.heightAnchor.constraint(equalTo: swiftLogo.widthAnchor) // square
           ])
       }
}
