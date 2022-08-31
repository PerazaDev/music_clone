//
//  ContentView.swift
//  music_clone
//
//  Created by Daniel Sanchez Peraza on 30/08/22.
//

import SwiftUI

struct RouterView: View {
    @Environment(\.colorScheme) var colorScheme

    @State var heightView = 0
    var body: some View {
        GeometryReader { geometry  in
            ZStack {
                
                TabView{
                    
                    
                    ListenNowView()
                        .tabItem {
                            Label {
                                Text("Listen now")
                            } icon: {
                                Image(systemName: "play.circle.fill")
                            }
                        }
                    BrowseView()
                        .tabItem {
                            Label {
                                Text("Browse")
                            } icon: {
                                Image(systemName: "square.grid.2x2.fill")
                            }
                        }
                    RadioView()
                        .tabItem {
                            Label {
                                Text("Radio")
                            } icon: {
                                Image(systemName: "dot.radiowaves.left.and.right")
                            }
                        }
                    LibraryView()
                        .tabItem {
                            Label {
                                Text("Library")
                            } icon: {
                                Image(systemName: "music.note.tv.fill")
                            }
                        }
                    SearchView()
                        .tabItem {
                            Label {
                                Text("Search")
                            } icon: {
                                Image(systemName: "magnifyingglass")
                            }
                            
                        }
                    
                }
                VStack{
                    Spacer()
                    MusicBar()
                        .frame(width: geometry.size.width, height: geometry.size.height * 0.08)
                }
                .padding(.bottom, 60)
            }
        }
        
 
    }
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RouterView()
    }
}
struct MusicBar : View {
    var body: some View {
        
        HStack(spacing: 0){
            Image(systemName: "music.note.tv.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 45.0, height: 45.0)
                .padding(.trailing, 10)
                .foregroundColor(Color(UIColor{ $0.userInterfaceStyle == .dark ? UIColor.white : UIColor.black}))

            Text("Yea yea (feeat. nelly)")
                .padding(.trailing, 20)
                .foregroundColor(Color(UIColor{ $0.userInterfaceStyle == .dark ? UIColor.white : UIColor.black}))
            Image(systemName: "play.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 20.0, height: 20.0)
                .foregroundColor(Color(UIColor{ $0.userInterfaceStyle == .dark ? UIColor.white : UIColor.black}))
                .padding(10)
            Image(systemName: "forward.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 30.0, height: 30.0)
                .foregroundColor(Color(UIColor{ $0.userInterfaceStyle == .dark ? UIColor.white : UIColor.black}))
                .padding(10)
        }
    }
    
}
