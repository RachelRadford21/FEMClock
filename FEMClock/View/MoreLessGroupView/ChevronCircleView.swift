//
//  ChevronCircleView.swift
//  FEMClock
//
//  Created by Rachel Radford on 7/14/22.
//

import SwiftUI

struct ChevronCircleView: View {
    var body: some View {
        Circle()
            .frame(width: 30, height: 30)
            .padding(.leading, 75)
    }
}

struct ChevronCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ChevronCircleView()
    }
}
