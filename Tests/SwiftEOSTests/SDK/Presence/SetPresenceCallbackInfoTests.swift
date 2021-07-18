import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Presence_SetPresenceCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Presence_SetPresenceCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Presence_SetPresenceCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Presence_SetPresenceCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
