//
//  ContentView.swift
//  music_clone
//
//  Created by Daniel Sanchez Peraza on 30/08/22.
//

import SwiftUI

struct RouterView: View {
    var body: some View {
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
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RouterView()
    }
}

