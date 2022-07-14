//
//  SheetRectangleView.swift
//  FEMClock
//
//  Created by Rachel Radford on 7/11/22.
//

import SwiftUI

struct SheetRectangleView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .foregroundColor(Color.sheetBackground)
            .frame(height: 550, alignment: .bottom)
            .frame(maxWidth: .infinity)
            .padding(.top, 600)

    }
}

struct SheetRectangleView_Previews: PreviewProvider {
    static var previews: some View {
        SheetRectangleView()
    }
}
