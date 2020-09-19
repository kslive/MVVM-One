//
//  ViewController.swift
//  MVVM-One
//
//  Created by Eugene Kiselev on 20.09.2020.
//

import UIKit

class ViewController: UIViewController {
    
// Создаем некого пользователя, информацию из которого перенесем в аутлеты:
    var profile: Profile? {
        didSet {
            guard let profile = profile else { return }
            self.name.text = profile.name
            self.secondName.text = profile.secondName
            self.age.text = "\(profile.age)"
        }
    }

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var secondName: UILabel!
    @IBOutlet weak var age: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createUser()
    }

// Создаем нашего пользователя:
    func createUser() {
        
        profile = Profile(name: "Jhon", secondName: "Smith", age: 33)
    }
}

