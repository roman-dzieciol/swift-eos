import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_KWS_AddNotifyPermissionsUpdateReceivedOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_KWS_AddNotifyPermissionsUpdateReceivedOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_KWS_AddNotifyPermissionsUpdateReceivedOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_KWS_AddNotifyPermissionsUpdateReceivedOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero) }
    }
}
