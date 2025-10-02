//
//  WorkoutCard.swift
//  StayFit360
//
//  Created by Pratik Haridas Ghadge on 02/10/25.
//

import SwiftUI

struct WorkoutCard: View {
	@State var workout: Workout

	var body: some View {
		HStack {
			Image(systemName: workout.image)
				.resizable()
				.scaledToFit()
				.frame(width: 48, height: 48)
				.foregroundColor(workout.tintColor)
				.padding()
				.background(.gray.opacity(0.1))
				.cornerRadius(10)

			VStack(spacing: 16) {
				HStack {
					Text(workout.title)
						.font(.title3)
						.bold()
					Spacer()
					Text(workout.duration)
				}

				HStack {
					Text(workout.date)
					Spacer()
					Text(workout.calories)
				}
			}
		}
		.padding(.horizontal)
	}
}

#Preview {
	WorkoutCard(workout: Workout(
		id: 1,
		title: "Running",
		image: "figure.run",
		tintColor: .green,
		duration: "30 mins",
		date: "Aug 3",
		calories: "1000 calories"
	))
}
