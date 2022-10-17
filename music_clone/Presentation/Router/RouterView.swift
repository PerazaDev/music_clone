//
//  ContentView.swift
//  music_clone
//
//  Created by Daniel Sanchez Peraza on 30/08/22.
//

import SwiftUI

struct RouterView: View {

    @State var heightView = 0
    @State var tabView: TypeTabView = .listenNowView
    var body: some View {
        ZStack {
            switch tabView {
            case .listenNowView:
                ListenNowView()

            case .browseView:
                BrowseView()

            case .radioView:
                RadioView()

            case .libraryView:
                LibraryView()

            case .searchView:
                SearchView()

            }
            VStack(spacing: 0){
                Spacer()
                MusicBar()
                    .frame(maxWidth: .infinity, maxHeight: screenHeight * 0.07)
                    .background(.thickMaterial)
                Divider()
                    .background(.thickMaterial)
                TabViewCustom(typeView: $tabView)
                    .frame(maxWidth: .infinity, maxHeight: screenHeight * 0.08)
                    .background(.thickMaterial)
            }
            .padding(.bottom, 10)
        }
        .ignoresSafeArea(.all)
    }
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RouterView()
    }
}
struct TabViewCustom: View {
    @Binding var typeView: TypeTabView
    var body: some View{
        HStack(spacing: 30){
            GenericButtonTab(typeView: $typeView,
                             typeButton: .listenNowView,
                             title: "Listen Now",
                             imageSystem: "play.circle.fill")
            .foregroundColor(typeView == .listenNowView ? .red : .gray )
            GenericButtonTab(typeView: $typeView,
                             typeButton: .browseView,
                             title: "Browse",
                             imageSystem: "square.grid.2x2.fill")
            .foregroundColor(typeView == .browseView ? .red : .gray )
            GenericButtonTab(typeView: $typeView,
                             typeButton: .radioView,
                             title: "Radio",
                             imageSystem: "dot.radiowaves.left.and.right")
            .foregroundColor(typeView == .radioView ? .red : .gray )
            GenericButtonTab(typeView: $typeView,
                             typeButton: .libraryView,
                             title: "Library",
                             imageSystem: "music.note.tv.fill")
            .foregroundColor(typeView == .libraryView ? .red : .gray )
            GenericButtonTab(typeView: $typeView,
                             typeButton: .searchView,
                             title: "Search",
                             imageSystem: "magnifyingglass")
            .foregroundColor(typeView == .searchView ? .red : .gray )
            

        }
    }
}
struct GenericButtonTab: View {
    @Binding var typeView: TypeTabView
    var typeButton: TypeTabView
    var title: String
    var imageSystem: String
    var body: some View {
        Button { self.typeView = typeButton} label: {
            VStack{
                Image(systemName: imageSystem)
                    .font(.title2)
                Text(title)
                    .font(.caption)
                    .fontWeight(.medium)
            }
        }
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
