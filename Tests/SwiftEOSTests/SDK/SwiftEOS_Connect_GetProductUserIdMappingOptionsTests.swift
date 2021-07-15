import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Connect_GetProductUserIdMappingOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_GetProductUserIdMappingOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_GetProductUserIdMappingOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.AccountIdType, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.TargetProductUserId)
            let swiftObject = try SwiftEOS_Connect_GetProductUserIdMappingOptions(sdkObject: cstruct) }
    }
}
