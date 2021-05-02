//
//  SwiftUI_Firebase_Realm_TodoApp.swift
//  SwiftUI-Firebase-Realm-Todo
//
//  Created by Владимир on 01.05.2021.
//

import SwiftUI
import Firebase
import FirebaseCore
import FirebaseCrashlytics


@main
struct SwiftUI_Firebase_Realm_TodoApp: App {
    let persistenceController = PersistenceController.shared

    init() {
       FirebaseApp.configure()
     }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
