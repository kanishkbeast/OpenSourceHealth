//
//  BloodTestGraphView.swift.swift
//  OpenSourceHealth
//
//  Created by Kanishk Jain on 10/20/24.
//

import SwiftUI
import Charts

struct BloodTestGraphView: View {
    @State private var bloodTests: [BloodTest] = [
        BloodTest(date: Date(), cholesterol: 180, triglycerides: 120, glucose: 90),
        BloodTest(date: Date().addingTimeInterval(-86400), cholesterol: 200, triglycerides: 140, glucose: 100)
    ]

    var body: some View {
        Chart(bloodTests) { bloodTest in
            LineMark(
                x: .value("Date", bloodTest.date),
                y: .value("Cholesterol", bloodTest.cholesterol)
            )
        }
        .frame(height: 300)
        .padding()
        .navigationTitle("Cholesterol Over Time")
    }
}

#Preview {
    BloodTestGraphView()
}

