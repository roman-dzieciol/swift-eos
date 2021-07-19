import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sessions_QueryInvitesOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_QueryInvitesOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_QueryInvitesOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_SESSIONS_QUERYINVITES_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_QueryInvitesOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_SESSIONS_QUERYINVITES_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
