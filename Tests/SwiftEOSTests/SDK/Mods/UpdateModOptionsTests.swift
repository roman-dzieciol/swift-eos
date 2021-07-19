import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Mods_UpdateModOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Mods_UpdateModOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Mods_UpdateModOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_MODS_UPDATEMOD_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.Mod)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Mods_UpdateModOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_MODS_UPDATEMOD_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.Mod) }
    }
}
