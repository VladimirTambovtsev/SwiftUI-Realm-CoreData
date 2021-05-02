//
//  CoreData.swift
//  SwiftUI-Firebase-Realm-Todo
//
//  Created by Владимир on 01.05.2021.
//

import Foundation
import CoreData


var persistentContainer: NSPersistentContainer = {
  let container = NSPersistentContainer(name: "FaveFlicks")
  container.loadPersistentStores { _, error in
    if let error = error as NSError? {
      fatalError("Unresolved error \(error), \(error.userInfo)")
    }
  }
  return container
}()
