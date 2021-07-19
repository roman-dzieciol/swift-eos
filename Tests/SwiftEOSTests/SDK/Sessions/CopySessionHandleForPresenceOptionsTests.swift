import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sessions_CopySessionHandleForPresenceOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_CopySessionHandleForPresenceOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_CopySessionHandleForPresenceOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_SESSIONS_COPYSESSIONHANDLEFORPRESENCE_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_CopySessionHandleForPresenceOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_SESSIONS_COPYSESSIONHANDLEFORPRESENCE_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
