import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Presence_QueryPresenceCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Presence_QueryPresenceCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Presence_QueryPresenceCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try SwiftEOS_Presence_QueryPresenceCallbackInfo(sdkObject: cstruct) }
    }
}
