//
//  AppFeature.swift
//  AppFeature
//
//  Created by Rhys Morgan on 21/06/2023.
//

import ComposableArchitecture

public struct AppFeature: Reducer {
  public struct State: Equatable {
    public var counter: Int
    fileprivate let initialCounter: Int

    public init(counter: Int = 0) {
      self.counter = counter
      self.initialCounter = counter
    }
  }

  public enum Action {
    case increment
    case decrement
    case reset
  }

  public init() {}

  public var body: some ReducerOf<Self> {
    Reduce { state, action in
      switch action {
      case .reset:
        state.counter = state.initialCounter
        return .none

      case .increment:
        state.counter += 1
        return .none

      case .decrement:
        state.counter -= 1
        return .none
      }
    }
  }
}
