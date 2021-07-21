import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Mods_ModInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Mods_ModInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Mods_ModInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.ModsCount, .zero)
            XCTAssertNil(cstruct.Mods)
            XCTAssertEqual(cstruct.Type, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Mods_ModInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.Mods)
            XCTAssertEqual(swiftObject.Type, .zero) }
    }
}
