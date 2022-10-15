//
//  LibraryView.swift
//  music_clone
//
//  Created by Daniel Sanchez Peraza on 30/08/22.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    Text("Hello, LibraryView!")
                    Image(systemName: "person.fill")
                }
                .frame(width: screenWidth)
                
            }
                .navigationTitle("Library")
            
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
