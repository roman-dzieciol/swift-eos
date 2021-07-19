import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Presence_HasPresenceOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Presence_HasPresenceOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Presence_HasPresenceOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_PRESENCE_HASPRESENCE_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Presence_HasPresenceOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_PRESENCE_HASPRESENCE_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.TargetUserId) }
    }
}
