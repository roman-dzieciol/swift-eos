import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_PlayerDataStorage_DeleteCacheOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_PlayerDataStorage_DeleteCacheOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_PlayerDataStorage_DeleteCacheOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try SwiftEOS_PlayerDataStorage_DeleteCacheOptions(sdkObject: cstruct) }
    }
}
