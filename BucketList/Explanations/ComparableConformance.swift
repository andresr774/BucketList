//
//  ComparableConformance.swift
//  BucketList
//
//  Created by Andres camilo Raigoza misas on 29/03/22.
//

import SwiftUI

struct User: Identifiable, Comparable {
    let id = UUID()
    let firstName: String
    let lastName: String
    
    static func <(lhs: User, rhs: User) -> Bool {
        lhs.lastName < rhs.lastName
    }
}

struct ComparableConformance: View {
    let users = [
        User(firstName: "Arnold", lastName: "Rimmer"),
        User(firstName: "Kristine", lastName: "Kochanski"),
        User(firstName: "David", lastName: "Lister"),
    ].sorted()
    
    var body: some View {
        List(users) {
            Text("\($0.firstName) \($0.lastName)")
        }
    }
}

struct ComparableConformance_Previews: PreviewProvider {
    static var previews: some View {
        ComparableConformance()
    }
}
