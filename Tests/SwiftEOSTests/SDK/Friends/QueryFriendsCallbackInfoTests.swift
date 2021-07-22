import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Friends_QueryFriendsCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Friends_QueryFriendsCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Friends_QueryFriendsCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Friends_QueryFriendsCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
