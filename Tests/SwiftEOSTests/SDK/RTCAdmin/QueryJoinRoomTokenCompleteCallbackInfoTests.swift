import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTCAdmin_QueryJoinRoomTokenCompleteCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAdmin_QueryJoinRoomTokenCompleteCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAdmin_QueryJoinRoomTokenCompleteCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.RoomName)
            XCTAssertNil(cstruct.ClientBaseUrl)
            XCTAssertEqual(cstruct.QueryId, .zero)
            XCTAssertEqual(cstruct.TokenCount, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_RTCAdmin_QueryJoinRoomTokenCompleteCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(swiftObject.RoomName)
            XCTAssertNil(swiftObject.ClientBaseUrl)
            XCTAssertEqual(swiftObject.QueryId, .zero)
            XCTAssertEqual(swiftObject.TokenCount, .zero) }
    }
}
