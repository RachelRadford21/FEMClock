//
//  SheetTimeView.swift
//  FEMClock
//
//  Created by Rachel Radford on 7/11/22.
//

import SwiftUI

struct SheetTimeView: View {
    @EnvironmentObject var vm: ViewModel
   
    var body: some View {
        let trimmedString = vm.currentTime.replacingOccurrences(of: "^0+", with: "", options: .regularExpression)
        VStack {
            Text("\(trimmedString)")
                .foregroundColor(Color.white)
                .font(.custom("Inter-ExtraBold", size: 55))
                .frame(width: 500)
             
        }
    }
}

struct SheetTimeView_Previews: PreviewProvider {
    static var previews: some View {
        SheetTimeView()
            .environmentObject(ViewModel())
    }
}
