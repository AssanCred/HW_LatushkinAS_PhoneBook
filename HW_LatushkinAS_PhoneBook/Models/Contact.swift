//
//  Contact.swift
//  HW_LatushkinAS_PhoneBook
//
//  Created by Артём Латушкин on 04.03.2023.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getInfoAboutPersons() -> [Person] {
        var persons: [Person] = []
        
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let emails = DataStore.shared.email.shuffled()
        let phones = DataStore.shared.phone.shuffled()
        
        let interactionCount = min(
            names.count,
            surnames.count,
            emails.count,
            phones.count
        )
        
        for index in 0..<interactionCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phone: phones[index]
            )
            
            persons.append(person)
            
        }
        return persons
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
