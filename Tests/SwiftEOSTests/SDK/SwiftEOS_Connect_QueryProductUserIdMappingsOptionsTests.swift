import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Connect_QueryProductUserIdMappingsOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_QueryProductUserIdMappingsOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_QueryProductUserIdMappingsOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.AccountIdType_DEPRECATED, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ProductUserIds)
            XCTAssertEqual(cstruct.ProductUserIdCount, .zero)
            let swiftObject = try SwiftEOS_Connect_QueryProductUserIdMappingsOptions(sdkObject: cstruct) }
    }
}
