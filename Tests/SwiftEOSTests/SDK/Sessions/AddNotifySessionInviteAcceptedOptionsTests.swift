import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sessions_AddNotifySessionInviteAcceptedOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_AddNotifySessionInviteAcceptedOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_AddNotifySessionInviteAcceptedOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_SESSIONS_ADDNOTIFYSESSIONINVITEACCEPTED_API_LATEST)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_AddNotifySessionInviteAcceptedOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_SESSIONS_ADDNOTIFYSESSIONINVITEACCEPTED_API_LATEST) }
    }
}
