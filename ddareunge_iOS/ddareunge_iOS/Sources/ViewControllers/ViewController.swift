//
//  ViewController.swift
//  ddareunge_iOS
//
//  Created by 안재은 on 16/11/2019.
//  Copyright © 2019 SwiftHelloWorld. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        setNaviTitleView()
        setNavigationBarClear()
        setNaviBarGradient()
    }
    
    private func setNaviTitleView() {
        guard let titleImage = UIImage(named: "logo") else { return }
        let titleImageView = UIImageView(image: titleImage)
//        titleImageView.contentMode = .scaleAspectFill
        self.navigationItem.titleView = titleImageView
    }
    
    private func setNaviBarGradient() {
        guard let navigationBar = self.navigationController?.navigationBar else { return }
        let gradient = CAGradientLayer()
        var gradientFrame = navigationBar.bounds
        guard let statusBarHeight = getCurrentWindow()?.windowScene?.statusBarManager?.statusBarFrame.height else { return }
        gradientFrame.size.height += statusBarHeight
        gradient.frame = gradientFrame
        gradient.colors = [UIColor.white.cgColor, UIColor.white.withAlphaComponent(0).cgColor]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 3)
        
        guard let image = getImageFrom(gradient) else { return }
        navigationBar.setBackgroundImage(image, for: .default)
    }
    
    private func getImageFrom(_ gradientLayer: CAGradientLayer) -> UIImage? {
        var gradientImage: UIImage?
        UIGraphicsBeginImageContext(gradientLayer.frame.size)
        guard let context = UIGraphicsGetCurrentContext() else { return gradientImage }
        gradientLayer.render(in: context)
        gradientImage = UIGraphicsGetImageFromCurrentImageContext()?.resizableImage(withCapInsets: UIEdgeInsets.zero, resizingMode: .stretch)
        UIGraphicsEndImageContext()
        return gradientImage
    }
}

