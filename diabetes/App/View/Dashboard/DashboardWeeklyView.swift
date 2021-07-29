//
//  DashboardWeeklyView.swift
//  diabetes
//
//  Created by Ruud van Engelenhoven on 25/07/2021.
//

import SwiftUI

struct DashboardWeeklyView: View {
    var body: some View {
        BaseWidget (
            header: DashboardWidgetHeaderView(
                title: "Weekly Overview",
                icon: "calendar",
                iconColor: Color("BloodColor"),
                chevron: false
            ),
            content: HStack(spacing: 8,content: {
                Text("Show widget")
            })
            .padding(.bottom, 16.0),
            footer: BaseWidgetFooterText(title: "We recommend you measure your blood sugar at least 3 times a day")
        )
    }
}

struct DashboardWeeklyView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardWeeklyView()
            .previewLayout(.fixed(width: 380.0, height: 224))
    }
}
