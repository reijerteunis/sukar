//
//  BgColorView.swift
//  diabetes
//
//  Created by Ruud van Engelenhoven on 29/07/2021.
//

import SwiftUI

struct BgColorView<Content>: View where Content: View {
    private let color: Color
    private let content: () -> Content
    
    init(color: Color, @ViewBuilder content: @escaping () -> Content) {
        self.color = color
        self.content = content
    }

    var body: some View {
        ZStack {
            color.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            content()
        }
    }
}
