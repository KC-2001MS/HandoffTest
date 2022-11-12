//
//  ContentView.swift
//  HandoffTest
//
//  Created by 茅根啓介 on 2022/11/13.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: HandoffTestDocument
    
    let activityType = "com.KCs-Test1.HandoffTest.handoff"

    var body: some View {
        TextEditor(text: $document.text)
            .userActivity(activityType, element:document) { file ,userActivity in
                try? userActivity.setTypedPayload(file)
            }
            .onContinueUserActivity(activityType, perform: { userActivity in
                if let file = try? userActivity.typedPayload(HandoffTestDocument.self) {
                    document = file
                }
            })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(HandoffTestDocument()))
    }
}
