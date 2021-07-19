import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_SessionSearch_CopySearchResultByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_SessionSearch_CopySearchResultByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_SessionSearch_CopySearchResultByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_SESSIONDETAILS_SETTINGS_API_LATEST)
            XCTAssertEqual(cstruct.SessionIndex, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_SessionSearch_CopySearchResultByIndexOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_SESSIONDETAILS_SETTINGS_API_LATEST)
            XCTAssertEqual(swiftObject.SessionIndex, .zero) }
    }
}
