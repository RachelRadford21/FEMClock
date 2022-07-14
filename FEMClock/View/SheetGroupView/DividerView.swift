//
//  DividerView.swift
//  FEMClock
//
//  Created by Rachel Radford on 7/11/22.
//

import SwiftUI

struct DividerView: View {
   
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .foregroundColor(Color.gray.opacity(0.5))
            .frame(width: 2, height: 250)
            .padding(.top, 400)
            .padding(.leading, 50)
    }
}

struct DividerView_Previews: PreviewProvider {
    static var previews: some View {
        DividerView()
    }
}
