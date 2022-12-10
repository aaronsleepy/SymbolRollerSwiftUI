//
//  ContentView.swift
//  SymbolRollerSwiftUI
//
//  Created by Aaron on 2022/12/10.
//

import SwiftUI

struct ContentView: View {
    let symbols: [String] = ["sun.min", "moon", "cloud", "wind", "snowflake"]
    
    
    var body: some View {
        VStack {
            Image(systemName: "sun.min")
            
            Text("sun.min")
            
            Button {
                print("button tapped")
            } label: {
                Text("Reload")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
