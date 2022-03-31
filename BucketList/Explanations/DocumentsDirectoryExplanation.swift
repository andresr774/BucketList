//
//  DocumentsDirectoryExplanation.swift
//  BucketList
//
//  Created by Andres camilo Raigoza misas on 29/03/22.
//

import SwiftUI

struct DocumentsDirectoryExplanation: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onTapGesture {
                let str = "Test Message"
                let url = FileManager.documentsDirectory.appendingPathComponent("message.txt")
                
                do {
                    try str.write(to: url, atomically: true, encoding: .utf8)
                    
                    let input = try String(contentsOf: url)
                    print(input)
                } catch {
                    print(error.localizedDescription)
                }
            }
    }
}

struct DocumentsDirectoryExplanation_Previews: PreviewProvider {
    static var previews: some View {
        DocumentsDirectoryExplanation()
    }
}
