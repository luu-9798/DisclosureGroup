//
//  ContentView.swift
//  DisclosureGroup
//
//  Created by Trung Luu on 4/4/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showPlanets = true
    var body: some View {
        VStack {
            DisclosureGroup("Planets", isExpanded: $showPlanets) {
                Text("Mercury")
                Text("Venus")
                
                DisclosureGroup("Earth") {
                    Text("North America")
                    Text("South America")
                    Text("Europe")
                    Text("Africa")
                    Text("Asia")
                    Text("Antarctica")
                    Text("Oceania")
                }
            }
            DisclosureGroup {
                Text("Alternative way of using DisclosureGroup")
            } label: {
                Label("Tap to reveal", systemImage: "cube.box")
                    .font(.system(size: 25, design: .rounded))
                    .foregroundColor(.blue)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
