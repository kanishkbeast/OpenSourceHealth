//
//   ExerciseLogListView.swift
//  OpenSourceHealth
//
//  Created by Kanishk Jain on 10/20/24.
//

import SwiftUI

struct ExerciseLogListView: View {
    @State private var exerciseLogs: [ExerciseLog] = [
        ExerciseLog(date: Date(), exerciseName: "Squat", sets: 4, reps: 10, weight: 80),
        ExerciseLog(date: Date().addingTimeInterval(-86400), exerciseName: "Deadlift", sets: 3, reps: 8, weight: 100)
    ]

    var body: some View {
        NavigationView {
            List(exerciseLogs) { log in
                VStack(alignment: .leading) {
                    Text("Exercise: \(log.exerciseName)")
                    Text("Sets: \(log.sets) Reps: \(log.reps) Weight: \(log.weight)")
                    Text("Date: \(log.date, style: .date)")
                }
            }
            .navigationTitle("Exercise Logs")
        }
    }
}

#Preview {
    ExerciseLogListView()
}

