import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTCAdmin_CopyUserTokenByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAdmin_CopyUserTokenByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAdmin_CopyUserTokenByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.UserTokenIndex, .zero)
            XCTAssertEqual(cstruct.QueryId, .zero)
            let swiftObject = try SwiftEOS_RTCAdmin_CopyUserTokenByIndexOptions(sdkObject: cstruct) }
    }
}
