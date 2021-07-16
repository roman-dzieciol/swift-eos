import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Auth_LoginOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Auth_LoginOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Auth_LoginOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.Credentials)
            XCTAssertEqual(cstruct.ScopeFlags, .init(rawValue: .zero)!)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Auth_LoginOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.Credentials)
            XCTAssertEqual(swiftObject.ScopeFlags, .init(rawValue: .zero)!) }
    }
}
