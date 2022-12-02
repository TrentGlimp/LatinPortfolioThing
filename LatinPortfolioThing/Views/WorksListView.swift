//
//  WorksListView.swift
//  LatinPortfolioThing
//
//  Created by Trent Glimp on 12/2/22.
//

import SwiftUI

struct WorksListView: View {
    @EnvironmentObject private var workData: WorkData
    let competency: Work.Competency
    
    var body: some View {
        List {
            ForEach(works) { work in
                NavigationLink(work.title, destination: WorkDetailView(work: work))
            }
        }
        .navigationTitle(navigationTitle)
        .background(Color.orange.edgesIgnoringSafeArea(.all))
    }
}

extension WorksListView {
    private var works: [Work] {
        workData.works(for: competency)
    }
    private var navigationTitle: String {
        "\(competency.rawValue) Works"
    }
}

struct WorksListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            WorksListView(competency: .changeMaker)
        }.environmentObject(WorkData())
    }
}
