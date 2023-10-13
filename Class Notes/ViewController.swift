//
//  ViewController.swift
//  Class Notes
//
//  Created by ANNAHLU RACLAWSKI on 10/6/23.
//

import UIKit

class ViewController: UIViewController {
    
    //Building a blank student array, giving initial value
    var students : [Student] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let s1 = Student(name: "Bob", age: 10, money: 4.23)
        let s2 = Student(name: "Bill", age: 11, money: 8.46)
        
        students.append(s1)
        students.append(s2)
        students.append(Student(name: "Jack", age: 12, money: 16.92))
        
        print(students[1].name)
        students[1].name = "Will"
        print(students[1].name)
        
        students[1].deposit(moneyIn: 8.54)
        print(students[1].money)
        
        
        let struct1 = StudentStruct(name: "Bobby", age: 34, money: 4000.00, rating: Rating.fire)
        print(struct1.name)
        switch struct1.rating {
        case Rating.fire:
            print("You are fire")
        case Rating.mid:
            print("You are mid")
        case Rating.trash:
            print("You are trash")
        default:
            print("You are nothing")
        }
    }

    
    @IBAction func buttonAction(_ sender: UIButton) {
        performSegue(withIdentifier: "first", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! SecondViewController
        
        nvc.stu = students[0]
    }
}

