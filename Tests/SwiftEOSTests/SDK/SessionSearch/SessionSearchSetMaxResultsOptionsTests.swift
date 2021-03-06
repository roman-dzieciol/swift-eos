import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_SessionSearch_SetMaxResultsOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_SessionSearch_SetMaxResultsOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_SessionSearch_SetMaxResultsOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.MaxSearchResults, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_SessionSearch_SetMaxResultsOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertEqual(swiftObject.MaxSearchResults, .zero) }
    }
}
