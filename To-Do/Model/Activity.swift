//
//  Activity.swift
//  To-Do
//
//  Created by Tao Ong on 12/17/17.
//  Copyright © 2017 Tao Ong. All rights reserved.
//

import Foundation

class Activity {
    var title : String
    var dueDate : String
    var description : String
    
    init(title: String, dueDate: String, description: String) {
        self.title = title
        self.dueDate = dueDate
        self.description = description
    }
}
