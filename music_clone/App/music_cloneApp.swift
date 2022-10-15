//
//  music_cloneApp.swift
//  music_clone
//
//  Created by Daniel Sanchez Peraza on 30/08/22.
//

import SwiftUI

@main
struct music_cloneApp: App {
   /* init(){
        let coloredNavAppearance = UINavigationBarAppearance()
        let coloredNavAppearance2 = UINavigationBarAppearance()
        
        coloredNavAppearance.backgroundColor =  UIColor.systemBackground.withAlphaComponent(0.2)
        coloredNavAppearance2.backgroundColor =  UIColor.systemBackground
        
        
        UINavigationBar.appearance().standardAppearance = coloredNavAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredNavAppearance2
        let standardAppearance = UITabBarAppearance()
        
        standardAppearance.backgroundColor =  UIColor.systemBackground.withAlphaComponent(0.2)
        
        UITabBar.appearance().standardAppearance = standardAppearance
        UITabBar.appearance().scrollEdgeAppearance = standardAppearance
        
        
    }*/
    var body: some Scene {
        WindowGroup {
            RouterView()
        }
    }
}
