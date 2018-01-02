//
//  Dog.swift
//  Example
//
//  Created by 蔡越 on 02/01/2018.
//  Copyright © 2018 Nanjing University. All rights reserved.
//

import Foundation
import RealmSwift
import IceCream
import CloudKit

class Dog: Object {
    @objc dynamic var id = NSUUID().uuidString
    @objc dynamic var name = ""
    @objc dynamic var age = 0
    @objc dynamic var isDeleted = false
    
    override class func primaryKey() -> String? {
        return "id"
    }
}

extension Dog: CKRecordConvertible {
    
}

extension Dog: CKRecordRecoverable {
    typealias O = Dog
}
