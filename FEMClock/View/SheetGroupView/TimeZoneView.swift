//
//  TimeZoneView.swift
//  FEMClock
//
//  Created by Rachel Radford on 7/11/22.
//

import SwiftUI

struct TimeZoneView: View {
    var textString = ""
   
    var body: some View {
        VStack {
            Text("CURRENT TIMEZONE")
                .foregroundColor(.black)
                .font(.custom("Inter-Regular", size: 15))
                .padding(.trailing, 95)
       
            Text(textString)
                .foregroundColor(.black)
                .font(.custom("Inter-ExtraBold", size: 25))
                .padding(5)
                .padding(.trailing, 8)
                    
        }
    }
}
struct TimeZoneView_Previews: PreviewProvider {
    static var previews: some View {
        TimeZoneView()
         
    }
}
