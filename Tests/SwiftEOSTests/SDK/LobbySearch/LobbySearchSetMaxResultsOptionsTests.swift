import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_LobbySearch_SetMaxResultsOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_LobbySearch_SetMaxResultsOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_LobbySearch_SetMaxResultsOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.MaxResults, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_LobbySearch_SetMaxResultsOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertEqual(swiftObject.MaxResults, .zero) }
    }
}
