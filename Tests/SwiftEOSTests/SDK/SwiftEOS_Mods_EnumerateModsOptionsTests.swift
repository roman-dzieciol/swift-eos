import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Mods_EnumerateModsOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Mods_EnumerateModsOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Mods_EnumerateModsOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.Type, .init(rawValue: .zero)!)
            let swiftObject = try SwiftEOS_Mods_EnumerateModsOptions(sdkObject: cstruct) }
    }
}
