//
//  DashboardSummaryView.swift
//  diabetes
//
//  Created by Ruud van Engelenhoven on 25/07/2021.
//

import SwiftUI

struct DashboardSummary: View {
    var body: some View {
        BaseWidget (
            header: DashboardWidgetHeaderView(
                title: "Summary",
                icon: "waveform.path.ecg.rectangle",
                iconColor: Color("BloodColor"),
                chevron: true
            ),
            content: HStack(spacing: 8,content: {
                DashboardSummaryCardView(
                    title: "Average",
                    result: 2.5,
                    background: Color("PrimaryColor")
                )
                DashboardSummaryCardView(
                    title: "Lowest",
                    result: 2.5,
                    background: Color("GreenColor")
                )
                DashboardSummaryCardView(
                    title: "Highest",
                    result: 2.5,
                    background: Color("BloodColor")
                )
            })
            .padding(.bottom, 16.0),
            footer: BaseWidgetFooterText(
                title: "Glucose log summary of the last 14 days"
            )
        )
    }
}

struct DashboardSummary_Previews: PreviewProvider {
    static var previews: some View {
        DashboardSummary()
            .previewLayout(.fixed(width: 380.0, height: 224))
    }
}
