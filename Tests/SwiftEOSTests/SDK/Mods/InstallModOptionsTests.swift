import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Mods_InstallModOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Mods_InstallModOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Mods_InstallModOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_MODS_INSTALLMOD_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.Mod)
            XCTAssertEqual(cstruct.bRemoveAfterExit, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Mods_InstallModOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_MODS_INSTALLMOD_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.Mod)
            XCTAssertEqual(swiftObject.bRemoveAfterExit, false) }
    }
}
