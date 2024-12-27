//
//  PlayerView.swift
//  music_clone
//
//  Created by Daniel Sanchez Peraza on 16/10/22.
//

import SwiftUI

struct PlayerView: View {
    @State var showLyrics: Bool = false
    var body: some View {
        VStack{
            topView
            midView
            bottomView
        }
    }
    var topView: some View {
        
        VStack{
            if showLyrics{
                HStack{
                 Image("vengaboys")
                    VStack{
                        Text("Punto 40")
                            .bold()
                        Text("Sebastian yatra")
                    }
                }
            }else{
                Image("vengaboys")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .padding(60)
                HStack{
                    VStack{
                        Text("Punto 40")
                            .bold()
                        Text("Sebastian yatra")
                    }
                    Spacer()
                    Image(systemName: "ellipsis.circle.fill")
                        .foregroundColor(.gray.opacity(0.6))
                }
            }
        }
        .padding()
    }
    var midView: some View {
        
        VStack{
         Capsule()
                .frame(maxWidth: .infinity , maxHeight: 8)
                .foregroundColor(.gray)
            HStack{
                Text("0:05")
                    .font(.footnote)
                Spacer()
                Text("Dolby Atmos")
                    .font(.footnote)
                Spacer()
                Text("-3:06")
                    .font(.footnote)
            }
        }
        .padding()
    }
    var bottomView: some View {
        VStack{
            HStack{
                Image(systemName: "play.fill")
                Image(systemName: "forward.fill")
            }
            HStack{
                
            }
            Text("bottomview")
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
