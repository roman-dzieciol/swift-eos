import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Connect_UnlinkAccountCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_UnlinkAccountCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_UnlinkAccountCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Connect_UnlinkAccountCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
