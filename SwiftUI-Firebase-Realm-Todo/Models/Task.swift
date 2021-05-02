//
//  Task.swift
//  SwiftUI-Firebase-Realm-Todo
//
//  Created by Владимир on 01.05.2021.
//

import Foundation

struct Task {
    var title: String
    var completion: Bool
}

#if DEBUG
let testDataTasks = [
    Task(title: "Implement UI", completion: true),
    Task(title: "Implement Firebase", completion: false),
    Task(title: "Implement Realm", completion: false),
    Task(title: "Implement CoreData", completion: false)
]
#endif
