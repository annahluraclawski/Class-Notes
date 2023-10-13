//
//  Student.swift
//  Class Notes
//
//  Created by ANNAHLU RACLAWSKI on 10/6/23.
//

import Foundation
public class Student {
    var name : String
    var age : Int
    var money : Double
    
    //Making Initializer
    init(name: String, age: Int, money: Double) {
        self.name = name
        self.age = age
        self.money = money
    }
    
    func deposit(moneyIn : Double) {
        money += moneyIn
    }
}

enum Rating {
    case fire
    case mid
    case trash
}

public struct StudentStruct {
    var name : String
    var age : Int
    var money : Double
    var rating : Rating
}
