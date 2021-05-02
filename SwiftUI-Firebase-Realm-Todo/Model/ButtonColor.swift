//
//  ButtonColor.swift
//  SwiftUI-Firebase-Realm-Todo
//
//  Created by Владимир on 02.05.2021.
//

import Foundation
import SwiftUI
import FirebaseFirestore
import FirebaseFirestoreSwift


struct ButtonColor: Codable, Identifiable {
    @DocumentID var id: String?
    var colorR: Int
    var colorG: Int
    var colorB: Int
}
