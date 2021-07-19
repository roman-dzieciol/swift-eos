import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Connect_QueryProductUserIdMappingsOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_QueryProductUserIdMappingsOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_QueryProductUserIdMappingsOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.AccountIdType_DEPRECATED, .zero)
            XCTAssertNil(cstruct.ProductUserIds)
            XCTAssertEqual(cstruct.ProductUserIdCount, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Connect_QueryProductUserIdMappingsOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertEqual(swiftObject.AccountIdType_DEPRECATED, .zero)
            XCTAssertNil(swiftObject.ProductUserIds) }
    }
}
