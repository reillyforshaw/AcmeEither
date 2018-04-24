//
//  EitherTests.swift
//  EitherTests
//
//  Created by Reilly Forshaw on 2018-04-19.
//  Copyright © 2018 Reilly Forshaw. All rights reserved.
//

import XCTest
@testable import AcmeEither

class EitherTests: XCTestCase {
  func testFlipped() {
    let left: Either<String, Int> = .left("A")
    XCTAssertTrue(left.flipped == .right("A"))

    let right: Either<String, Int> = .right(42)
    XCTAssertTrue(right.flipped == .left(42))
  }
}
