import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sessions_AddNotifySessionInviteReceivedOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_AddNotifySessionInviteReceivedOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_AddNotifySessionInviteReceivedOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_SESSIONS_ADDNOTIFYSESSIONINVITERECEIVED_API_LATEST)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_AddNotifySessionInviteReceivedOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_SESSIONS_ADDNOTIFYSESSIONINVITERECEIVED_API_LATEST) }
    }
}
