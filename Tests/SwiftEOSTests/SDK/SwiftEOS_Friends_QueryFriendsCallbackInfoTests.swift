import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Friends_QueryFriendsCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Friends_QueryFriendsCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Friends_QueryFriendsCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try SwiftEOS_Friends_QueryFriendsCallbackInfo(sdkObject: cstruct) }
    }
}
