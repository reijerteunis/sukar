//
//  DashboardWeightView.swift
//  diabetes
//
//  Created by Ruud van Engelenhoven on 25/07/2021.
//

import SwiftUI

struct DashboardWeightView: View {
    var body: some View {
        BaseWidget(
            header: DashboardWidgetHeaderView(
                title: "Weight",
                icon: "waveform.path.ecg.rectangle",
                iconColor: Color("BloodColor"),
                chevron: false
            ),
            content: HStack(spacing: 8,content: {
                Text("Show widget")
            }),
            footer: BaseWidgetFooterText(title: "Glucose log summary of the last 14 days")
        )
    }
}

struct DashboardWeightView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardWeightView()
    }
}
