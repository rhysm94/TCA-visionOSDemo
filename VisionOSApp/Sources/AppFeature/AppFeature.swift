//
//  AppFeature.swift
//  AppFeature
//
//  Created by Rhys Morgan on 21/06/2023.
//

import ComposableArchitecture

public struct AppFeature: ReducerProtocol {
  public struct State: Equatable {
    public var counter: Int

    public init(counter: Int) {
      self.counter = counter
    }
  }

  public enum Action {
    case increment
    case decrement
  }

  public init() {}

  public var body: some ReducerProtocolOf<Self> {
    Reduce { state, action in
      switch action {
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
