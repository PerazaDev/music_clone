//
//  CardPortrait.swift
//  music_clone
//
//  Created by Daniel Sanchez Peraza on 31/08/22.
//

import SwiftUI

struct CardPortrait: View {
    var data: MusicModel
    var body: some View {
        VStack(spacing: 0){
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
            .padding(.leading, 10)
            .padding(.trailing, 10)
            .padding(.bottom, 0)
            
            VStack{
                
                HStack {
                    Text(data.name)
                        .foregroundColor(.white)
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
                Text(data.provider)
                    .foregroundColor(.gray)
                    .font(Font.system(size: 17))
            }
            
            
            .background(.yellow)
            
        }
        
    }
}

struct CardPortrait_Previews: PreviewProvider {
    static var previews: some View {
        CardPortrait(data: MusicModel(name: "Como quieren que la olvide- Singleedgdsgdfgsg", image: "vengaboys", provider: "Emmanuel", isExplicit: false))
    }
}
