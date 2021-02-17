//
//  InfoContactViewController.swift
//  ContactsApp
//
//  Created by Вадим on 17.02.2021.
//

import UIKit

class InfoContactViewController: UIViewController {
    
    var persone: Person!
    
    @IBOutlet var fullnameLabel: UILabel!
    @IBOutlet var numberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullnameLabel.text = persone.fullName
        emailLabel.text = persone.email
        numberLabel.text = String(persone.phone)
    }
}
