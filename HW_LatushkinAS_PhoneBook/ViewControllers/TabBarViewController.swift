//
//  TabBarViewController.swift
//  HW_LatushkinAS_PhoneBook
//
//  Created by Артём Латушкин on 04.03.2023.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passingViewController()
    }
    
    private func passingViewController() {
        guard let contactListVC = viewControllers?.first as? ContactListViewController else { return }
        guard let contactListWithInfoVC = viewControllers?.last as? ContactListWithInfoViewController else { return }
        
        let persons = Person.getInfoAboutPersons()
        contactListVC.persons = persons
        contactListWithInfoVC.persons = persons
    }
}
