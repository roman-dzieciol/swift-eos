import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_PlayerDataStorage_DeleteFileCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_PlayerDataStorage_DeleteFileCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_PlayerDataStorage_DeleteFileCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_PlayerDataStorage_DeleteFileCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
