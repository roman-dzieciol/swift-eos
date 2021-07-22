import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Presence_SetPresenceOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Presence_SetPresenceOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Presence_SetPresenceOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.PresenceModificationHandle)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Presence_SetPresenceOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.PresenceModificationHandle) }
    }
}
