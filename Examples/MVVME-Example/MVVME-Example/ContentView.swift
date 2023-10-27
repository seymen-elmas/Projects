//
//  ContentView.swift
//  MVVME-Example
//
//  Created by Seymen Nadir Elmas on 27.10.2023.
//

import SwiftUI

struct ContentView: View { 
    @StateObject private var vm = ProductListViewModel(webservice: Webservice())
    
    var body: some View {
        List(vm.products) { product in
            Text(product.title)
        }.task {
            await vm.populateProducts()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
