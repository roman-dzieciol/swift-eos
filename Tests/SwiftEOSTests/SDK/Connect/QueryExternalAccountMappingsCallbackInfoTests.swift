import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Connect_QueryExternalAccountMappingsCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_QueryExternalAccountMappingsCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_QueryExternalAccountMappingsCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Connect_QueryExternalAccountMappingsCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
