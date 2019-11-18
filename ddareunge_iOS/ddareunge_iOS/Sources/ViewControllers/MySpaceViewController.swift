//
//  MySpaceViewController.swift
//  ddareunge_iOS
//
//  Created by 윤동민 on 2019/11/18.
//  Copyright © 2019 SwiftHelloWorld. All rights reserved.
//

import UIKit

class MySpaceViewController: UIViewController {
    
    @IBOutlet weak var profileView: UIView!
    @IBOutlet weak var profileButton: UIButton!
    @IBOutlet weak var profileLabel: UILabel!
    
    @IBOutlet weak var ticketButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tabBarController?.tabBar.isHidden = true
        self.navigationController?.navigationBar.isHidden = true
        setProfileImage()
        setProfileLabel(id: "SOPT5 :)")
        setTicketView()
    }
    
    private func setProfileImage() {
        guard let image = UIImage(named: "invalidName") else { return }
        profileButton.setImage(image, for: .normal)
        profileButton.layer.cornerRadius = profileButton.bounds.height / 2
        profileButton.clipsToBounds = true
        profileButton.layer.borderColor = UIColor.lightGreenishBlue.cgColor
        profileButton.layer.borderWidth = 5
    }
    
    private func setProfileLabel(id: String) {
        let profileText = id + " 님"
        self.profileLabel.text = profileText
    }
    
    private func setTicketView() {
        ticketButton.layer.cornerRadius = ticketButton.frame.width / 20
        ticketButton.clipsToBounds = true
        ticketButton.backgroundColor = .paleTurquoise
        ticketButton.layer.borderColor = UIColor.lightGreenishBlue.cgColor
        ticketButton.layer.borderWidth = 3
    }
}
