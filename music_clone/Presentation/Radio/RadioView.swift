//
//  RadioView.swift
//  music_clone
//
//  Created by Daniel Sanchez Peraza on 30/08/22.
//

import SwiftUI

struct RadioView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    Text("Hello, RadioView!")
                    Image(systemName: "person.fill")
                }
                .frame(width: screenWidth)
                
            }
                .navigationTitle("Radio")
            
        }
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
