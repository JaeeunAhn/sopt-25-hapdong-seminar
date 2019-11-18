//
//  CustomButton.swift
//  ddareunge_iOS
//
//  Created by 윤동민 on 2019/11/18.
//  Copyright © 2019 SwiftHelloWorld. All rights reserved.
//

import UIKit

class CustomButton: UIView {
    
    private var view: UIView?
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var arrowImage: UIImageView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        view = Bundle.main.loadNibNamed("CustomButton", owner: self, options: nil)?.first as? UIView
        initialView()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        initialView()
    }
    
    private func initialView() {
        guard let view = self.view else { return }
        view.frame = self.bounds
        self.addSubview(view)
        makeRounded(cornerRadius: view.frame.width / 20)
    }
    
    func setDescriptionLabel(_ description: String) {
        self.descriptionLabel.text = description
    }
}

extension CustomButton {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let view = self.view else { return }
        view.backgroundColor = .paleTurquoise
        arrowImage.tintColor = .white
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let view = self.view else { return }
        view.backgroundColor = .white
        arrowImage.tintColor = UIColor(red: 224/255, green: 224/255, blue: 224/255, alpha: 1.0)
    }
}
