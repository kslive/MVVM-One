//
//  ViewModel.swift
//  MVVM-One
//
//  Created by Eugene Kiselev on 20.09.2020.
//

import Foundation

class ViewModel {
    
    private var profile = Profile(name: "John", secondName: "Smith", age: 33)
    
    var name: String {
        return profile.name
    }
    
    var secondName: String {
        return profile.secondName
    }
    
    var age: String {
        return "\(profile.age)"
    }
}
