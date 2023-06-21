import AppFeature
import ComposableArchitecture
import XCTest

@MainActor
final class AppFeatureTests: XCTestCase {
  func testIncrement() async {
    let store = TestStore(initialState: AppFeature.State(counter: 0)) {
      AppFeature()
    }

    await store.send(.increment) {
      $0.counter += 1
    }
  }

  func testDecrement() async {
    let store = TestStore(initialState: AppFeature.State(counter: 0)) {
      AppFeature()
    }

    await store.send(.decrement) {
      $0.counter -= 1
    }
  }
}
