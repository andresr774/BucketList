//
//  TouchIDAndFaceID.swift
//  BucketList
//
//  Created by Andres camilo Raigoza misas on 29/03/22.
//

import LocalAuthentication
import SwiftUI

struct TouchIDAndFaceID: View {
    @State private var isUnlocked = false
    
    var body: some View {
        VStack {
            if isUnlocked {
                Text("Unlocked")
            } else {
                Text("Locked")
            }
        }
        .onAppear(perform: authenticate)
    }
    
    func authenticate() {
        let context = LAContext()
        var error: NSError?
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            let reason = "We need to unlock your data"
            
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, authenticationError in
                
                if success {
                    isUnlocked = true
                } else {
                    
                }
            }
        } else {
            // no biometrics
        }
    }
}

struct TouchIDAndFaceID_Previews: PreviewProvider {
    static var previews: some View {
        TouchIDAndFaceID()
    }
}
