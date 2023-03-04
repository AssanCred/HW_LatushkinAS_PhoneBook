//
//  TabBarViewController.swift
//  HW_LatushkinAS_PhoneBook
//
//  Created by Артём Латушкин on 04.03.2023.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passingViewController()
        navigationItem.title = "Contact List"
    }
    
    private func passingViewController() {
        let persons = Person.getInfoAboutPerson()
        guard let contactListVC = viewControllers?.first as? ContactListViewController else { return }
        contactListVC.persons = persons
        guard let contactListWithInfoVC = viewControllers?.last as? ContactListWithInfoViewController else { return }
        contactListWithInfoVC.persons = persons
        
        
    }
}
