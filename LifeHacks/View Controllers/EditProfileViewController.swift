//
//  EditProfileViewController.swift
//  LifeHacks
//
//  Created by Richard Garrison on 5/3/21.
//

import UIKit


protocol EditProfileViewControllerDelegate: AnyObject {
    func editProfileViewControllerDidEditProfileInfo(viewController: EditProfileViewController)
}

class EditProfileViewController: UIViewController, Stateful {
    
    @IBOutlet weak var nameTextField: UITextView!
    @IBOutlet weak var aboutMeTextView: UITextField!
    
    var stateController: StateController?
    weak var delegate: EditProfileViewControllerDelegate?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let user = stateController?.user
        nameTextField.text = user?.name
        aboutMeTextView.text = user?.aboutMe

        
    }
    
    
    @IBAction func save(_ sender: UIBarButtonItem) {
        if let stateController = stateController, let name = nameTextField.text, let aboutMe =
            aboutMeTextView.text, !name.isEmpty && !aboutMe.isEmpty {
            let oldUser = stateController.user
            stateController.user = User(name: name, aboutMe: aboutMe, profileImage: oldUser.profileImage, reputation: oldUser.reputation)
            delegate?.editProfileViewControllerDidEditProfileInfo(viewController: self)
            dismiss(animated: true, completion: nil)
        } else {
            let title = "Missing name or about me"
            let message = "Both name and about me need to be present to be able to save your editing"
            let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(cancelAction)
            present(alertController, animated: true, completion: nil)
            
        }
        
    }
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    

}
