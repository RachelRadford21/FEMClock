//
//  SheetView.swift
//  FEMClock
//
//  Created by Rachel Radford on 7/10/22.
//

import SwiftUI

struct SheetView: View {
    @EnvironmentObject var vm: ViewModel
    
    var body: some View {
       
      
        ZStack {
        SheetBackgroundView()
            .overlay(
                SheetMorningEveningView()
                    .position(x: 260, y: 240)
                    .overlay(
                        SheetTimeView()
                            .position(x: 300, y: 280)
                            .overlay(
                                SheetCityView()
                                    .position(x: 270, y: 350)
                   )
            )

            .overlay {
                HStack{
                VStack {
                    let trimmedString = vm.timeZone.replacingOccurrences(of: "_", with: " ", options: .regularExpression)
                    SheetRectangleView()
                        .overlay (
                            TimeZoneView(textString: trimmedString)
                                .position(x: 200, y: 700)
                        )
                        .overlay(
                            DayofMonthView()
                                .position(x: 150, y: 820)

                        )
                        .overlay(
                            DividerView()

                        )
                        .overlay(
                            DayofWeekView()
                                .position(x: 560, y: 700)
                        )
                        .overlay(
                            WeekofYearView()
                                .position(x: 550, y: 845)
                        )
                           
                    }
                }.frame(width: 750)
            }
        )
      }
   }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
            .previewInterfaceOrientation(.portrait)
            .environmentObject(ViewModel())
    }
}
