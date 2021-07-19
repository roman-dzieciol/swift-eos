import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Mods_UninstallModOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Mods_UninstallModOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Mods_UninstallModOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_MODS_UNINSTALLMOD_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.Mod)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Mods_UninstallModOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_MODS_UNINSTALLMOD_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.Mod) }
    }
}
