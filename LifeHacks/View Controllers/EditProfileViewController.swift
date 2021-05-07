//
//  EditProfileViewController.swift
//  LifeHacks
//
//  Created by Richard Garrison on 5/3/21.
//

import UIKit

class EditProfileViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: RoundTextField!
    @IBOutlet weak var aboutMeTextView: RoundTextView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func save(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancel(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
