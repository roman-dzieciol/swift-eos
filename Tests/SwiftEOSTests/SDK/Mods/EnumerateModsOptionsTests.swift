import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Mods_EnumerateModsOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Mods_EnumerateModsOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Mods_EnumerateModsOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.Type, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Mods_EnumerateModsOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertEqual(swiftObject.Type, .zero) }
    }
}
