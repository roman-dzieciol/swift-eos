import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Mods_InstallModOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Mods_InstallModOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Mods_InstallModOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.Mod)
            XCTAssertEqual(cstruct.bRemoveAfterExit, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Mods_InstallModOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.Mod)
            XCTAssertEqual(swiftObject.bRemoveAfterExit, false) }
    }
}
