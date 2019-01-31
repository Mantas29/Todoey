//
//  Category.swift
//  Todoey
//
//  Created by Mantas Skeiverys on 27/01/2019.
//  Copyright © 2019 Mantas Skeiverys. All rights reserved.
//

import Foundation
import RealmSwift

class Category : Object{
    @objc dynamic var name : String = ""
    let items = List<Item>()
}
