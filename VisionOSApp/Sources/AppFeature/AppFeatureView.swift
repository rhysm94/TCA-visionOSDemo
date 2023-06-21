//
//  AppFeatureView.swift
//  AppFeature
//
//  Created by Rhys Morgan on 21/06/2023.
//

import ComposableArchitecture
import SwiftUI

public struct AppFeatureView: View {
  let store: StoreOf<AppFeature>

  public init(store: StoreOf<AppFeature>) {
    self.store = store
  }

  public var body: some View {
    WithViewStore(store, observe: { $0 }) { viewStore in
      VStack {
        Button("Reset") {
          viewStore.send(.reset)
        }

        HStack {
          Button {
            viewStore.send(.decrement)
          } label: {
            Image(
              systemName: "minus"
            )
          }

          Text("Counter: \(viewStore.counter)")

          Button {
            viewStore.send(.increment)
          } label: {
            Image(systemName: "plus")
          }
        }
      }
    }
  }
}

struct AppFeaturePreview: PreviewProvider {
  static var previews: some View {
    AppFeatureView(
      store: Store(initialState: AppFeature.State(counter: 0)) {
        AppFeature()
      }
    )
  }
}
