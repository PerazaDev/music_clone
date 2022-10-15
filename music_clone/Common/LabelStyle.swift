//
//  LabelStyle.swift
//  music_clone
//
//  Created by Daniel Sanchez Peraza on 15/10/22.
//

import SwiftUI

struct UnderLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack {
            configuration.icon
            configuration.title
        }
    }
}
