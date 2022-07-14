//
//  WeekofYearView.swift
//  FEMClock
//
//  Created by Rachel Radford on 7/11/22.
//

import SwiftUI

struct WeekofYearView: View {
    @EnvironmentObject var vm: ViewModel
    var body: some View {
        VStack {
            Text("WEEK NUMBER")
                .foregroundColor(.black)
                .font(.custom("Inter-Regular", size: 15))
                .padding(.bottom, -5)
          
            Text(vm.weekofYear.description)
                .foregroundColor(.black)
                .font(.custom("Inter-ExtraBold", size: 55))
                .padding(.trailing, 45)
        }
    }
}

struct WeekofYearView_Previews: PreviewProvider {
    static var previews: some View {
        WeekofYearView()
            .environmentObject(ViewModel())
    }
}
