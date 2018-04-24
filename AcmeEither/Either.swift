//
//  Either.swift
//  AcmeEither
//
//  Created by Reilly Forshaw on 2018-04-19.
//  Copyright © 2018 Reilly Forshaw. All rights reserved.
//

import Foundation

public enum Either <A, B> {
  public typealias Flipped = Either<B, A>

  case left(A)
  case right(B)

  public var flipped: Flipped {
    switch self {
    case let .left(a):
      return .right(a)

    case let .right(b):
      return .left(b)
    }
  }
}

public extension Either where A : Equatable, B : Equatable {
  static func ==(lhs: Either<A, B>, rhs: Either<A, B>) -> Bool {
    switch (lhs, rhs) {
    case let (.left(lhsA), .left(rhsA)):
      return lhsA == rhsA

    case let (.right(lhsB), .right(rhsB)):
      return lhsB == rhsB

    case (.left, .right),
         (.right, .left):
      return false
    }
  }
}
