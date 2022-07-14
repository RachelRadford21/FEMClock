//
//  DayofMonthView.swift
//  FEMClock
//
//  Created by Rachel Radford on 7/11/22.
//

import SwiftUI

struct DayofMonthView: View {
    var body: some View {
        let date = Date()
        let calendar = Calendar.current
        let components = calendar.dateComponents([.day], from: date)
        let dayOfMonth = components.day
        
        VStack {
            Text("DAY OF THE MONTH")
                .foregroundColor(.black)
                .font(.custom("Inter-Regular", size: 15))
            Text(dayOfMonth?.description ?? "")
                .foregroundColor(.black)
                .font(.custom("Inter-ExtraBold", size: 55))
                .padding(.trailing, 89)
                .padding(2)
               
        }.padding(.top, 50)
    }
}

struct DayofMonthView_Previews: PreviewProvider {
    static var previews: some View {
        DayofMonthView()
    }
}
