//
//  ContactInfoViewController.swift
//  HW_LatushkinAS_PhoneBook
//
//  Created by Артём Латушкин on 04.03.2023.
//

import UIKit

class ContactInfoViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var persone: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = persone.fullName
        phoneLabel.text = persone.phone
        emailLabel.text = persone.email
    }
}
