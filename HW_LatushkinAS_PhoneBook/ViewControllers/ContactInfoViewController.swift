//
//  ContactInfoViewController.swift
//  HW_LatushkinAS_PhoneBook
//
//  Created by Артём Латушкин on 08.03.2023.
//

import UIKit

final class ContactInfoViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var persone: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = persone.fullName
        phoneLabel.text = persone.phone
        emailLabel.text = persone.email
    }
}
