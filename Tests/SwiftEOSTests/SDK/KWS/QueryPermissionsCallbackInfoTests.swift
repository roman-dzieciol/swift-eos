import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_KWS_QueryPermissionsCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_KWS_QueryPermissionsCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_KWS_QueryPermissionsCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.KWSUserId)
            XCTAssertNil(cstruct.DateOfBirth)
            XCTAssertEqual(cstruct.bIsMinor, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_KWS_QueryPermissionsCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.KWSUserId)
            XCTAssertNil(swiftObject.DateOfBirth)
            XCTAssertEqual(swiftObject.bIsMinor, false) }
    }
}