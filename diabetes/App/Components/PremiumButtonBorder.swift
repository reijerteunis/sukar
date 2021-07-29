//
//  BaseButtonBorder.swift
//  diabetes
//
//  Created by Ruud van Engelenhoven on 28/07/2021.
//

import SwiftUI

struct PremiumButtonBorder: View {
    @State private var showingSheet = false

    var title: String = "Button Text"
    var border: Color = Color("PrimaryColor")
    var color: Color = Color("PrimaryColor")
    var bgColor: Color = Color("WhiteColor")
    var radius: CGFloat = 8.0

    var body: some View {
        Button(action: {showingSheet = true}) {
            Spacer()
            Text(title)
            Spacer()
        }
        .foregroundColor(color)
        .frame(height: 48.0)
        .background(bgColor)
        .overlay(
            RoundedRectangle(cornerRadius: radius)
                .stroke(border, lineWidth: 1)
        )
        .sheet(isPresented: $showingSheet, content: Premium.init)
    }
}

struct BaseButtonBorder_Previews: PreviewProvider {
    static var previews: some View {
        PremiumButtonBorder()
    }
}
