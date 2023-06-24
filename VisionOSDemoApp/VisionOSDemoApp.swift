//
//  VisionOSDemoApp.swift
//  VisionOSDemo
//
//  Created by Rhys Morgan on 21/06/2023.
//

import AppFeature
import ComposableArchitecture
import SwiftUI

@main
struct VisionOSDemoApp: App {
  var body: some Scene {
    WindowGroup {
      AppFeatureView(
        store: Store(initialState: AppFeature.State(counter: 0)) {
          AppFeature()
        }
      )
    }
  }
}
