//
//  ViewController.swift
//  MVVM-One
//
//  Created by Eugene Kiselev on 20.09.2020.
//

import UIKit

class ViewController: UIViewController {
    
    var viewModel: ViewModel! = ViewModel() {
        didSet {
            self.name.text = viewModel.name
            self.secondName.text = viewModel.secondName
            self.age.text = viewModel?.age
        }
    }
//    var profile: Profile? {
//        didSet {
//            guard let profile = profile else { return }
//            self.name.text = profile.name
//            self.secondName.text = profile.secondName
//            self.age.text = "\(profile.age)"
//        }
//    }

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var secondName: UILabel!
    @IBOutlet weak var age: UILabel!
}

