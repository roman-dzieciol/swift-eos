import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_PlayerDataStorage_ReadFileCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_PlayerDataStorage_ReadFileCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_PlayerDataStorage_ReadFileCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.Filename)
            let swiftObject = try XCTUnwrap(try SwiftEOS_PlayerDataStorage_ReadFileCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.Filename) }
    }
}
