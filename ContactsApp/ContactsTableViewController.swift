//
//  ContactsTableViewController.swift
//  ContactsApp
//
//  Created by Вадим on 17.02.2021.
//

import UIKit

class ContactsTableViewController: UITableViewController {
    
    var personContact = Person.infoPersone()

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personContact.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Contacts", for: indexPath)
        
        let person = personContact[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName

        cell.contentConfiguration = content
        
        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoContactVC = segue.destination as? InfoContactViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let persone = personContact[indexPath.row]
        infoContactVC.persone = persone
    }
}
