//
//  ProfileViewController.swift
//  LifeHacks
//
//  Created by Richard Garrison on 5/2/21.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var profilePictureImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var reputationLabel: UILabel!
    @IBOutlet weak var aboutMeLabel: UILabel!
    
    fileprivate let stateController = StateController()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let user = stateController.user
        profilePictureImageView.image = UIImage(named: user.profileImage)
        nameLabel.text = user.name
        reputationLabel.text = "\(user.reputation)"
        aboutMeLabel.text = user.aboutMe
    
    }
    

}
