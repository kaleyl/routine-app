//
//  ContentView.swift
//  Workout Routine App
//
//  Created by Kaley Leung on 1/7/21.
//

import SwiftUI
import ElegantCalendar

let startDate = Date().addingTimeInterval(TimeInterval(60 * 60 * 24 * (-30 * 36)))
let endDate = Date().addingTimeInterval(TimeInterval(60 * 60 * 24 * (30 * 36)))

struct ContentView: View {
    
    @ObservedObject var calendarManager = ElegantCalendarManager(
        configuration: CalendarConfiguration(startDate: startDate, endDate: endDate))

    var body: some View {
        ElegantCalendarView(calendarManager: calendarManager)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
