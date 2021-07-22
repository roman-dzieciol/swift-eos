import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_TitleStorage_QueryFileCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_TitleStorage_QueryFileCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_TitleStorage_QueryFileCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_TitleStorage_QueryFileCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
