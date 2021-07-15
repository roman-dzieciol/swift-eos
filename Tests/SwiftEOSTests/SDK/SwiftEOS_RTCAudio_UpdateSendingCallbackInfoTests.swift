import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTCAudio_UpdateSendingCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAudio_UpdateSendingCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAudio_UpdateSendingCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RoomName)
            XCTAssertEqual(cstruct.AudioStatus, .init(rawValue: .zero)!)
            let swiftObject = try SwiftEOS_RTCAudio_UpdateSendingCallbackInfo(sdkObject: cstruct) }
    }
}
