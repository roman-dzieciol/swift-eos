import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Sanctions_PlayerSanctionTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sanctions_PlayerSanction() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sanctions_PlayerSanction.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.TimePlaced, .zero)
            XCTAssertNil(cstruct.Action)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sanctions_PlayerSanction(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertEqual(swiftObject.TimePlaced, .zero)
            XCTAssertNil(swiftObject.Action) }
    }
}
