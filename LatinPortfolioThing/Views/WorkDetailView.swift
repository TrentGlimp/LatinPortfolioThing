//
//  WorkDetailView.swift
//  LatinPortfolioThing
//
//  Created by Trent Glimp on 12/2/22.
//

import SwiftUI

struct WorkDetailView: View {
    let work: Work
    
    var body: some View {
        VStack {
            HStack {
                Text("Competency: \(work.competency.rawValue)")
                    .font(.subheadline)
                    .padding()
                Spacer()
            }
            Text("\(work.description)")
        }
        .navigationTitle(work.title)
    }
}

struct WorkDetailView_Previews: PreviewProvider {
    @State static var work = Work.testWorks[0]
    static var previews: some View {
        NavigationView {
            WorkDetailView(work: work)
        }
    }
}
