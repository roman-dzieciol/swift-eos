import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Presence_PresenceChangedCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Presence_PresenceChangedCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Presence_PresenceChangedCallbackInfo.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.PresenceUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Presence_PresenceChangedCallbackInfo(sdkObject: cstruct))
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.PresenceUserId) }
    }
}
