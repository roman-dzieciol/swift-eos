import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_KWS_CreateUserCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_KWS_CreateUserCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_KWS_CreateUserCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.KWSUserId)
            XCTAssertEqual(cstruct.bIsMinor, .zero)
            let swiftObject = try SwiftEOS_KWS_CreateUserCallbackInfo(sdkObject: cstruct) }
    }
}
