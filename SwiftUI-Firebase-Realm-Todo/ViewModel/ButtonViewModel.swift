//
//  ButtonColorRepository.swift
//  SwiftUI-Firebase-Realm-Todo
//
//  Created by Владимир on 02.05.2021.
//

import Foundation
import Firebase
import FirebaseFirestore
import FirebaseFirestoreSwift
import Combine


class ButtonViewModel: ObservableObject {
    
    var db = Firestore.firestore()
    @Published var button: ButtonColor
    let colorR: Int
    let colorG: Int
    let colorB: Int
    
    init() {
        button = ButtonColor(id: "id", colorR: 0, colorG: 0, colorB: 0)
        colorR = 0
        colorG = 0
        colorB = 0
    }
    
    
    func loadData() {
        db.collection("Button").document("r3NLV7iSMnvrVbCBPDUf").getDocument { (document, error) in
            if let document = document, document.exists {
                let dataDescription = document.data().map(String.init(describing:)) ?? "nil"
                print("Document data: \(dataDescription)")
                let colorR = document.get("colorR") as? Int ?? 0
                let colorG = document.get("colorG") as? Int ?? 0
                let colorB = document.get("colorB") as? Int ?? 0
                self.button = ButtonColor(id: "unique_id", colorR: colorR, colorG: colorG, colorB: colorB)
            } else {
                print("Document does not exist")
                print("\(String(describing: error))")
            }
        }
        
        //        db.collection("Button").limit(to: 1).getDocuments { (querySnapshot, error) in
        //            if error != nil {
        //                fatalError("Button color does not exist in firestore.")
        //                return
        //            }
        //            guard let documents = querySnapshot?.documents else {
        //              print("No documents")
        //              return
        //            }
        //            documents.map { queryDocumentSnapshot -> ButtonColor in
        //                let data = queryDocumentSnapshot.data()
        //                let id = data["id"] as? String ?? "unique_id"
        //                let colorR = data["colorR"] as? Int ?? 0
        //                let colorG = data["colorG"] as? Int ?? 0
        //                let colorB = data["colorB"] as? Int ?? 0
        //                return ButtonColor(id: id, colorR: colorR, colorG: colorG, colorB: colorB)
        //            }
        //        }
    }
    
    // more code to follow
}
