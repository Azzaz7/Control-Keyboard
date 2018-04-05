//
//  person.swift
//  Sallary_swift2
//
//  Created by azzaz on 3/21/18.
//  Copyright © 2018 azzaz. All rights reserved.
//

import Foundation
class Person {
    
    
    func getSalary( sall : Double) ->  Double
    {
    return sall
    }
}
class Manager: Person {
    
    override func getSalary(sall: Double) -> Double {
        return sall*200
    }
}
class Employee: Person {
    override func getSalary(sall: Double) -> Double {
            return sall*100
    }
}



