import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Friends_OnFriendsUpdateInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Friends_OnFriendsUpdateInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Friends_OnFriendsUpdateInfo.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            XCTAssertEqual(cstruct.PreviousStatus, .init(rawValue: .zero)!)
            XCTAssertEqual(cstruct.CurrentStatus, .init(rawValue: .zero)!)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Friends_OnFriendsUpdateInfo(sdkObject: cstruct))
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.TargetUserId)
            XCTAssertEqual(swiftObject.PreviousStatus, .init(rawValue: .zero)!)
            XCTAssertEqual(swiftObject.CurrentStatus, .init(rawValue: .zero)!) }
    }
}
