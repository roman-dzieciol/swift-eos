import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTC_DisconnectedCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTC_DisconnectedCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTC_DisconnectedCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RoomName)
            let swiftObject = try SwiftEOS_RTC_DisconnectedCallbackInfo(sdkObject: cstruct) }
    }
}
