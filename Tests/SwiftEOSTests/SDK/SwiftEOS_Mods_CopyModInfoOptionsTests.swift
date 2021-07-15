import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Mods_CopyModInfoOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Mods_CopyModInfoOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Mods_CopyModInfoOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.Type, .init(rawValue: .zero)!)
            let swiftObject = try SwiftEOS_Mods_CopyModInfoOptions(sdkObject: cstruct) }
    }
}
