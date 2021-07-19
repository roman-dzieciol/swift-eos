import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Presence_CopyPresenceOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Presence_CopyPresenceOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Presence_CopyPresenceOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_PRESENCE_COPYPRESENCE_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Presence_CopyPresenceOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_PRESENCE_COPYPRESENCE_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.TargetUserId) }
    }
}
