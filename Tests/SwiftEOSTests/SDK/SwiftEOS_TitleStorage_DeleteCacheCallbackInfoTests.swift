import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_TitleStorage_DeleteCacheCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_TitleStorage_DeleteCacheCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_TitleStorage_DeleteCacheCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_TitleStorage_DeleteCacheCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
