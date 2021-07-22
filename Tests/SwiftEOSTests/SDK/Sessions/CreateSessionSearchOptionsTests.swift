import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Sessions_CreateSessionSearchOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_CreateSessionSearchOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_CreateSessionSearchOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.MaxSearchResults, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_CreateSessionSearchOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertEqual(swiftObject.MaxSearchResults, .zero) }
    }
}
