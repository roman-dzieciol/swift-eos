import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Auth_LoginStatusChangedCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Auth_LoginStatusChangedCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Auth_LoginStatusChangedCallbackInfo.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.PrevStatus, .init(rawValue: .zero)!)
            XCTAssertEqual(cstruct.CurrentStatus, .init(rawValue: .zero)!)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Auth_LoginStatusChangedCallbackInfo(sdkObject: cstruct))
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertEqual(swiftObject.PrevStatus, .init(rawValue: .zero)!)
            XCTAssertEqual(swiftObject.CurrentStatus, .init(rawValue: .zero)!) }
    }
}
