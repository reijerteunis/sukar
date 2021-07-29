//
//  BaseWidgetFooterText.swift
//  diabetes
//
//  Created by Ruud van Engelenhoven on 26/07/2021.
//

import SwiftUI

struct BaseWidgetFooterText: View {
    var title: String

    var body: some View {
        Text(title)
            .foregroundColor(Color("TextColor"))
            .multilineTextAlignment(.leading)
            .padding(.top, 12.0)
    }
}

struct BaseWidgetFooterText_Previews: PreviewProvider {
    static var previews: some View {
        BaseWidgetFooterText(title: "Some text")
    }
}
