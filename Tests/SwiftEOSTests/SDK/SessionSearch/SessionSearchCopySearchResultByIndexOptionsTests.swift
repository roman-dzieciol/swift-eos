import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_SessionSearch_CopySearchResultByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_SessionSearch_CopySearchResultByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_SessionSearch_CopySearchResultByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.SessionIndex, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_SessionSearch_CopySearchResultByIndexOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertEqual(swiftObject.SessionIndex, .zero) }
    }
}
