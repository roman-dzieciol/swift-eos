import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Mods_InstallModOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Mods_InstallModOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Mods_InstallModOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.Mod)
            XCTAssertEqual(cstruct.bRemoveAfterExit, .zero)
            let swiftObject = try SwiftEOS_Mods_InstallModOptions(sdkObject: cstruct) }
    }
}
