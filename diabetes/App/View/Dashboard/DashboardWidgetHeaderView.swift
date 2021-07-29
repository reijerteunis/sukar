//
//  DashboardWidgetHeaderView.swift
//  diabetes
//
//  Created by Ruud van Engelenhoven on 25/07/2021.
//

import SwiftUI

struct DashboardWidgetHeaderView: View {
    var title: String
    var icon: String
    var iconColor: Color
    var chevron: Bool?

    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(iconColor)
                .font(.system(size: 24))
            Text(title).font(.title2)
            Spacer()
            if chevron == true {
                Image(systemName: "chevron.right")
                    .font(.system(size: 16))
            }
        }
        .padding(.bottom, 24.0)
    }
}

struct DashboardWidgetHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardWidgetHeaderView(title: "summary", icon: "waveform.path.ecg.rectangle", iconColor: Color("BloodColor"), chevron: true)
            .previewLayout(.fixed(width: 380.0, height: 60.0))
    }
}
