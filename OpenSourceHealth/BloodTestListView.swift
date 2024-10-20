//
//  BloodTestListView.swift
//  OpenSourceHealth
//
//  Created by Kanishk Jain on 10/20/24.
//

import SwiftUI

struct BloodTestListView: View {
    @State private var bloodTests: [BloodTest] = [
        BloodTest(date: Date(), cholesterol: 180, triglycerides: 120, glucose: 90),
        BloodTest(date: Date().addingTimeInterval(-86400), cholesterol: 200, triglycerides: 140, glucose: 100)
    ]

    var body: some View {
        NavigationView {
            List(bloodTests) { bloodTest in
                VStack(alignment: .leading) {
                    Text("Date: \(bloodTest.date, style: .date)")
                    Text("Cholesterol: \(bloodTest.cholesterol)")
                    Text("Triglycerides: \(bloodTest.triglycerides)")
                    Text("Glucose: \(bloodTest.glucose)")
                }
            }
            .navigationTitle("Blood Test Results")
        }
    }
}

#Preview {
    BloodTestListView()
}
