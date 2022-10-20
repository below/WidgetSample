//
//  ContentView.swift
//  WidgetSample
//
//  Created by Alexander von Below on 20.10.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        EntryView()
            .aspectRatio(
                1,
                contentMode: .fit)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
