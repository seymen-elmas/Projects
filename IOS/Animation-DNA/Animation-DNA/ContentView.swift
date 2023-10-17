//
//  ContentView.swift
//  Animation-DNA
//
//  Created by Seymen Nadir Elmas on 7.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
           DNALoading()
            Text("Loading...")
                .font(.largeTitle)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
