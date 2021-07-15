import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Connect_GetExternalAccountMappingsOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_GetExternalAccountMappingsOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_GetExternalAccountMappingsOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.AccountIdType, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.TargetExternalUserId)
            let swiftObject = try SwiftEOS_Connect_GetExternalAccountMappingsOptions(sdkObject: cstruct) }
    }
}
