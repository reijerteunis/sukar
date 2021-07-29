//
//  BaseWidgetComponent.swift
//  diabetes
//
//  Created by Ruud van Engelenhoven on 26/07/2021.
//

import SwiftUI

struct BaseWidget <Header : View, Content : View, Footer : View> : View {
    var header : Header?
    var content : Content
    var footer : Footer?

    var body: some View {
        VStack(alignment: .leading) {
            if header != nil {
                header
            }
            content
            if footer != nil {
                Divider()
                    .background(Color("BorderColor"))
                footer
            }
        }
            .padding(.all, 16.0)
            .background(Color("WhiteColor"))
            .cornerRadius(/*@START_MENU_TOKEN@*/6.0/*@END_MENU_TOKEN@*/)
            .shadow(color: Color("BoxShadowColor"), radius: 2, x: 0, y: 1)
    }
}
