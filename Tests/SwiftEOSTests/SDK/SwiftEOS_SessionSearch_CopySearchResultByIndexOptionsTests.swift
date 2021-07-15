import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_SessionSearch_CopySearchResultByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_SessionSearch_CopySearchResultByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_SessionSearch_CopySearchResultByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.SessionIndex, .zero)
            let swiftObject = try SwiftEOS_SessionSearch_CopySearchResultByIndexOptions(sdkObject: cstruct) }
    }
}
