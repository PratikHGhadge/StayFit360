//
//  StayFit360App.swift
//  StayFit360
//
//  Created by Pratik Haridas Ghadge on 01/10/25.
//

import SwiftUI

@main
struct StayFit360App: App {
    var body: some Scene {
        WindowGroup {
			StayFit360TabView()
        }
    }
}

#Preview {
	StayFit360TabView()
}
