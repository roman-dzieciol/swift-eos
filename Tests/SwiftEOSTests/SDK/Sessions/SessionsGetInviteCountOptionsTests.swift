import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sessions_GetInviteCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_GetInviteCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_GetInviteCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_SESSIONS_GETINVITECOUNT_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_GetInviteCountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_SESSIONS_GETINVITECOUNT_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
