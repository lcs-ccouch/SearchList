//
//  ContentView.swift
//  SearchList
//
//  Created by calum couch on 2023-04-12.
//

import SwiftUI
struct ContentView: View {
    // MARK: Stored properties
    @State var items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]
    
    // Search term the user has provided
    @State var searchText = ""
    
    
    // MARK: Computed properties
    var body: some View {
        
        NavigationView {
            VStack {
                
                Text("Searching on: \(searchText)")
                
                List(items, id: \.self){ currentItem in
                    Text (currentItem)
                }
                .searchable (text: $searchText)
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

