//
//  FullContactsTableViewController.swift
//  ContactsApp
//
//  Created by Вадим on 17.02.2021.
//

import UIKit

class FullContactsTableViewController: UITableViewController {
    
    var personContact = Person.infoPersone()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        personContact.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Full Contacts", for: indexPath)

        let person = personContact[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName

        cell.contentConfiguration = content

        return cell
    }
    
//    override func tableView(_ tableView: UITableView,
//                            titleForHeaderInSection section: Int) -> String? {
//    }

}
