//
//  DashboardReminderView.swift
//  diabetes
//
//  Created by Ruud van Engelenhoven on 25/07/2021.
//

import SwiftUI

struct DashboardReminderView: View {
    var body: some View {
        BaseWidget(
            header: DashboardWidgetHeaderView(
                title: "Reminder",
                icon: "bell",
                iconColor: Color("OrangeColor"),
                chevron: true
            ),
            content: HStack(spacing: 8,content: {
                Text("Show widget")
            }),
            footer: BaseWidgetFooterText(title: "Glucose log summary of the last 14 days")
        )
    }
}

struct DashboardReminderView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardReminderView()
    }
}
