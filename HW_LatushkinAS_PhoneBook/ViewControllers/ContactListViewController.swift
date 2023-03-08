//
//  PersoneListViewController.swift
//  HW_LatushkinAS_PhoneBook
//
//  Created by Артём Латушкин on 04.03.2023.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    var persons: [Person] = []
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let contactInfoVC = segue.destination as? ContactInfoViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        contactInfoVC?.persone = persons[indexPath.row]
    }
}

// MARK: - UITableViewDataSorse
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = persons[indexPath.row]
        
        content.text = contact.fullName
        cell.contentConfiguration = content
        
        return cell
    }
}
