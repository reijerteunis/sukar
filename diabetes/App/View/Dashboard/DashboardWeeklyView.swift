//
//  DashboardWeeklyView.swift
//  diabetes
//
//  Created by Ruud van Engelenhoven on 25/07/2021.
//

import SwiftUI

struct DashboardWeeklyView: View {
    let dayNameFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = .current
        dateFormatter.calendar = .current
        dateFormatter.dateFormat = "EE"
        return dateFormatter
    }()

    let calDayFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = .current
        dateFormatter.calendar = .current
        dateFormatter.dateFormat = "dd"
        return dateFormatter
    }()

    let last7Days = getDays()
    
    var body: some View {
        BaseWidget (
            header: DashboardWidgetHeaderView(
                title: "Weekly Overview",
                icon: "calendar",
                iconColor: Color("BloodColor"),
                chevron: false
            ),
            content: HStack(content: {
                ForEach(0..<last7Days.count) {index in
                    VStack {
                        Text(dayNameFormatter.string(from: last7Days[index]))
                            .font(.system(size: 12))
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color("TextColor")/*@END_MENU_TOKEN@*/)
                        ZStack {
                            Circle()
                                .frame(width: 37.0, height: 37.0)
                                .foregroundColor(Color("BackgroundColor"))
                            Text(calDayFormatter.string(from: last7Days[index]))
                                .foregroundColor(/*@START_MENU_TOKEN@*/Color("TextColor")/*@END_MENU_TOKEN@*/)
                        }
                    }
                    if (index != last7Days.count-1) {
                        Spacer()
                    }
                }
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

// MARK: - getDays Function
extension DashboardWeeklyView {
    static func getDays() -> [Date] {
        let cal = Calendar.current
        var date = cal.startOfDay(for: Date())
        var days = [Date]()

        for _ in 1...7 {
            date = cal.date(byAdding: Calendar.Component.day, value: -1, to: date)!
            days.append(date)
        }
        days.reverse()
        return days
    }
}
