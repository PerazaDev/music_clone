//
//  ListenNowView.swift
//  music_clone
//
//  Created by Daniel Sanchez Peraza on 30/08/22.
//

import SwiftUI

struct ListenNowView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    Text("Hello, ListenNowView!")
                    Image(systemName: "person.fill")
                }
                .frame(width: screenWidth)
                
            }
                .navigationTitle("Listen Now")
            
        }
        
    }
}

struct ListenNowView_Previews: PreviewProvider {
    static var previews: some View {
        ListenNowView()
    }
}
