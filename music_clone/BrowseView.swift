//
//  BrowseView.swift
//  music_clone
//
//  Created by Daniel Sanchez Peraza on 30/08/22.
//

import SwiftUI

struct BrowseView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    Text("Hello, BrowseView!")
                    Image(systemName: "person.fill")
                }
                .frame(width: screenWidth)
                
            }
                .navigationTitle("Browse")
            
        }
        
    }
}

struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        BrowseView()
    }
}
