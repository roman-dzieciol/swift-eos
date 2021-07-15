import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Auth_LinkAccountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Auth_LinkAccountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Auth_LinkAccountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.LinkAccountFlags, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ContinuanceToken)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try SwiftEOS_Auth_LinkAccountOptions(sdkObject: cstruct) }
    }
}
