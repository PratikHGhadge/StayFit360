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


	var body: some View {
		ScrollView(showsIndicators: false) {
			VStack {
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
			}
		}
	}
}


#Preview {
	HomeView()
}
