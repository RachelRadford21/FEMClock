//
//  ContentView.swift
//  FEMClock
//
//  Created by Rachel Radford on 7/8/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = ViewModel()
    var body: some View {
        
       
        
        GeometryReader { geo in
           
            if geo.size.height > geo.size.width {
                ZStack {
                    BackgroundImageView()
                VStack {
                    QuoteView()
                        .padding(.trailing, geo.size.width * 0.55)
                        .padding(.bottom, geo.size.height * 0.70)
                        .overlay(
                        MorningEveningView()
                            .padding(.trailing, geo.size.width * 0.96)
                            .padding(.top, geo.size.height * 0.30)
                            
                        )
                        .overlay (
                            TimeView()
                                .padding(.trailing, geo.size.width * 0.95)
                                .padding(.top, geo.size.height * 0.40)

                        )
                                .overlay (
                            CityView()
                                .padding(.trailing, geo.size.width * 1.03)
                                .padding(.top, geo.size.height * 0.55)

                        ).overlay(
                            MoreLessView()
                                .padding(.trailing, geo.size.width * 1.15)
                                .padding(.top, geo.size.height * 0.8)
                   )
                }
            
            }
            }else if geo.size.width > geo.size.height {
                ZStack {
                    BackgroundImageView()
                    HStack {
                        QuoteView()
                            .position(x: geo.size.width / 2.5, y: geo.size.height / 8.5)


                            .overlay(
                            MorningEveningView()
                                .padding(.trailing, geo.size.width * 0.51)
                                .padding(.top, geo.size.height * 0.07)

                            )
                            .overlay (
                                TimeView()
                                    .padding(.trailing, geo.size.width * 0.51)
                                    .padding(.top, geo.size.height * 0.20)
                                  
                            ).overlay (
                                CityView()
                                    .position(x: geo.size.width / 4.5, y: geo.size.height / 1.23)

                            )
                            .overlay(
                                MoreLessView()
                                    .position(x: geo.size.width * 0.88, y: geo.size.height / 1.26)

                            )
                    }
                }
            }
        }
    }
}
       

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ViewModel())
            .previewInterfaceOrientation(.landscapeRight)
    }
}
