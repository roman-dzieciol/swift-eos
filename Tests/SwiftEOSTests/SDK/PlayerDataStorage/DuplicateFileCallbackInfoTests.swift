import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_PlayerDataStorage_DuplicateFileCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_PlayerDataStorage_DuplicateFileCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_PlayerDataStorage_DuplicateFileCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_PlayerDataStorage_DuplicateFileCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
