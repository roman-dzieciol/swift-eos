import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_TitleStorage_ReadFileCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_TitleStorage_ReadFileCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_TitleStorage_ReadFileCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.Filename)
            let swiftObject = try XCTUnwrap(try SwiftEOS_TitleStorage_ReadFileCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.Filename) }
    }
}
