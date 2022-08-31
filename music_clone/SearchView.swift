//
//  SearchView.swift
//  music_clone
//
//  Created by Daniel Sanchez Peraza on 30/08/22.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    Text("Hello, SearchView!")
                    Image(systemName: "person.fill")
                }
                .frame(width: screenWidth)
                
            }
                .navigationTitle("Library")
            
        }
        .searchable(text: $searchText,placement: .navigationBarDrawer(displayMode: .always), prompt: "Artist, Songs, Lyrics, and More")
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
