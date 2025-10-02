//
//  HomeView.swift
//  StayFit360
//
//  Created by Pratik Haridas Ghadge on 02/10/25.
//

import SwiftUI

struct HomeView: View {
	@State var calories: Int = 123
	@State var activeMinutes: Int = 52
	@State var standHours: Int = 8

	var mockActivities: [Activity] = [
		Activity(
			id: 0,
			title: "Today Steps",
			subtitle: "Goal 12,000",
			image: "figure.walk",
			tintColor: .green,
			amount: "9,812"
		),
		Activity(
			id: 1,
			title: "Calories Burned",
			subtitle: "Goal 1,000",
			image: "flame.fill",
			tintColor: .red,
			amount: "812"
		),
		Activity(
			id: 2,
			title: "Distance",
			subtitle: "Goal 12 km",
			image: "figure.walk",
			tintColor: .blue,
			amount: "9.8 km"
		),
		Activity(
			id: 3,
			title: "Running Steps",
			subtitle: "Goal 50,000",
			image: "figure.run",
			tintColor: .purple,
			amount: "55,812"
		)
	]

	let mockWorkouts: [Workout] = [
		Workout(
			id: 0,
			title: "Running",
			image: "figure.run",
			tintColor: .cyan,
			duration: "51 mins",
			date: "Aug 1",
			calories: "512 kcal"
		),
		Workout(
			id: 1,
			title: "Strength Training",
			image: "figure.run",
			tintColor: .red,
			duration: "51 mins",
			date: "Aug 1",
			calories: "512 kcal"
		),
		Workout(
			id: 2,
			title: "Walk",
			image: "figure.walk",
			tintColor: .purple,
			duration: "5 mins",
			date: "Aug 11",
			calories: "512 kcal"
		),
		Workout(
			id: 3,
			title: "Running",
			image: "figure.run",
			tintColor: .cyan,
			duration: "1 min",
			date: "Aug 19",
			calories: "512 kcal"
		)
	]


	var body: some View {
		ScrollView(showsIndicators: false) {
			VStack(alignment: .leading) {
				Text("Welcome")
					.font(.largeTitle)
					.padding()
				HStack {

					VStack {
						VStack(alignment: .leading, spacing: 8) {
							Text("Calories")
								.font(.callout)
								.bold()
								.foregroundColor(.red)

							Text("123 kcal")
								.bold()

						}
						.padding(.bottom)

						VStack(alignment: .leading, spacing: 8) {
							Text("Active")
								.font(.callout)
								.bold()
								.foregroundColor(.green)

							Text("52 min")
								.bold()
						}
						.padding(.bottom)

						VStack(alignment: .leading, spacing: 8) {
							Text("Stand")
								.font(.callout)
								.bold()
								.foregroundColor(.blue)

							Text("8 hours")
								.bold()

						}
					}

					Spacer()

					ZStack {
						ProgressCircleView(
							progress: $calories,
							goal: 600,
							color: .red
						)

						ProgressCircleView(
							progress: $activeMinutes,
							goal: 60,
							color: .green
						)
						.padding(.all, 20)

						ProgressCircleView(
							progress: $standHours,
							goal: 12,
							color: .blue
						)
						.padding(.all, 40)
					}
					.padding(.horizontal)

					Spacer()
				}
				.padding(.horizontal)

				HStack {
					Text("See all activity")
						.font(.title2)
					Spacer()

					Button {
						print("Button Tapped")
					} label: {
						Text("Show more")
							.padding(.all, 10)
							.foregroundColor(.white)
							.background(.blue)
							.cornerRadius(20)
					}
				}
				.padding(.horizontal)

				LazyVGrid(columns: Array(
					repeating: GridItem(.flexible()),
					count: 2)) {
						ForEach(mockActivities, id: \.id) { activity in
							ActivityCard(activity: activity)
						}
					}
					.padding(.horizontal)


				HStack {
					Text("Recent Workouts")
						.font(.title2)
					Spacer()
					Button {
						print("Button Tapped")
					} label: {
						Text("Show more")
							.padding(.all, 10)
							.foregroundColor(.white)
							.background(.blue)
							.cornerRadius(20)
					}
				}
				.padding(.horizontal)

				LazyVStack {
					ForEach(mockWorkouts, id: \.id) { workout in
						WorkoutCard(workout: workout)
					}
					.padding(.horizontal)
				}
			}
		}
	}
}


#Preview {
	HomeView()
}
