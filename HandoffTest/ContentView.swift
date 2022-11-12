//
//  ContentView.swift
//  HandoffTest
//
//  Created by 茅根啓介 on 2022/11/13.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: HandoffTestDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(HandoffTestDocument()))
    }
}
