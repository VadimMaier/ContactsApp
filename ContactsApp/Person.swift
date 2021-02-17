//
//   Person.swift
//  ContactsApp
//
//  Created by Вадим on 17.02.2021.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: Int
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func infoPersone() -> [Person] {
        [Person(name: DataManager.init().names()[0], surname: DataManager.init().surnames()[0], email: DataManager.init().emails()[0], phone: DataManager.init().numbers()[0]),
         Person(name: DataManager.init().names()[1], surname: DataManager.init().surnames()[1], email: DataManager.init().emails()[1], phone: DataManager.init().numbers()[1]),
         Person(name: DataManager.init().names()[2], surname: DataManager.init().surnames()[2], email: DataManager.init().emails()[2], phone: DataManager.init().numbers()[2]),
         Person(name: DataManager.init().names()[3], surname: DataManager.init().surnames()[3], email: DataManager.init().emails()[3], phone: DataManager.init().numbers()[3]),
         Person(name: DataManager.init().names()[4], surname: DataManager.init().surnames()[4], email: DataManager.init().emails()[4], phone: DataManager.init().numbers()[4]),
         Person(name: DataManager.init().names()[5], surname: DataManager.init().surnames()[5], email: DataManager.init().emails()[5], phone: DataManager.init().numbers()[5]),
         Person(name: DataManager.init().names()[6], surname: DataManager.init().surnames()[6], email: DataManager.init().emails()[6], phone: DataManager.init().numbers()[6]),
         Person(name: DataManager.init().names()[7], surname: DataManager.init().surnames()[7], email: DataManager.init().emails()[7], phone: DataManager.init().numbers()[7]),
         Person(name: DataManager.init().names()[8], surname: DataManager.init().surnames()[8], email: DataManager.init().emails()[8], phone: DataManager.init().numbers()[8]),
         Person(name: DataManager.init().names()[9], surname: DataManager.init().surnames()[9], email: DataManager.init().emails()[9], phone: DataManager.init().numbers()[9])
       ]
    }
}
