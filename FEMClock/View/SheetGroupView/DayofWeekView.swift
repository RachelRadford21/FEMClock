//
//  DayofWeekView.swift
//  FEMClock
//
//  Created by Rachel Radford on 7/11/22.
//

import SwiftUI

struct DayofWeekView: View {
    
    var body: some View {

        let date = Date()
        let calendar = Calendar.current
        let components = calendar.dateComponents([.weekday], from: date)
        let dayOfWeek = components.weekday
        
        VStack {
            Text("DAY OF THE WEEK")
                .foregroundColor(.black)
                .font(.custom("Inter-Regular", size: 15))
                .padding(.bottom, -10)
       
            Text(dayOfWeek?.description ?? "")
                .foregroundColor(.black)
                .font(.custom("Inter-ExtraBold", size: 55))
                .padding(.trailing, 100)
        }
    }
}

struct DayofWeekView_Previews: PreviewProvider {
    static var previews: some View {
        DayofWeekView()
           
    }
}
