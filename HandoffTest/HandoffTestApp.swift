//
//  HandoffTestApp.swift
//  HandoffTest
//
//  Created by 茅根啓介 on 2022/11/13.
//

import SwiftUI

@main
struct HandoffTestApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: HandoffTestDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
