import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_PlayerDataStorage_QueryFileListCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_PlayerDataStorage_QueryFileListCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_PlayerDataStorage_QueryFileListCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.FileCount, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_PlayerDataStorage_QueryFileListCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertEqual(swiftObject.FileCount, .zero) }
    }
}
