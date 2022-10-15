//
//  Card.swift
//  music_clone
//
//  Created by Daniel Sanchez Peraza on 31/08/22.
//

import SwiftUI

struct Card: View {
    var data: MusicModel
    var body: some View {
        VStack{
            ZStack{
                Image(data.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(5)
                /*HStack{
                 Image(systemName: "applelogo")
                 .foregroundColor(.white)
                 Text("Music")
                 .foregroundColor(.white)
                 }*/
                
            }
            
            HStack{
                VStack(alignment: .leading){
                    
                    HStack {
                        Text(data.name)
                            .foregroundColor(colorSwipe)
                            .font(Font.system(size: 18))
                        if data.isExplicit {
                            VStack{
                                Text("E")
                                    .foregroundColor(.white)
                                    .font(Font.system(size: 12))
                            }
                            .frame(width: 15, height: 15, alignment: .center)
                            .background(.gray)
                        }
                    }
                    .lineLimit(1)
                    Text(data.provider)
                        .foregroundColor(.gray)
                        .font(Font.system(size: 17))
                }
                Spacer()
            }
            
        }
        .padding()
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(data: MusicModel(name: "We Like To Party, yeah yeah la icotea", image: "vengaboys", provider: "Vengaboys", isExplicit: true))
    }
}
