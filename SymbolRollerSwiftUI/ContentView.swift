//
//  ContentView.swift
//  SymbolRollerSwiftUI
//
//  Created by Aaron on 2022/12/10.
//

import SwiftUI

struct ContentView: View {
    let symbols: [String] = ["sun.min", "moon", "cloud", "wind", "snowflake"]
    
    @State var imageName: String = "moon"
    
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            
            Text(imageName)
                .font(.system(size: 40, weight: .bold, design: .default))
            
            Button {
                print("button tapped")
            } label: {
                HStack {
                    Image(systemName: "arrow.3.trianglepath")
                    
                    VStack {
                        Text("Reload")
                        
                        Text("Reload desc")
                    }
                }
            }
            .frame(maxWidth: .infinity, minHeight: 80)
            .background(.pink)
            .cornerRadius(40)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
