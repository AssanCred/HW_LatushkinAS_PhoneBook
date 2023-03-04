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
        navigationItem.title = "Personal List"
    }
    
    private func passingViewController() {
        let persons = Person.getInfoAboutPerson()
        guard let personListVC = viewControllers?.first as? PersonListViewController else { return }
        personListVC.persons = persons
        
    }
}
