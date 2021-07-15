import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_SessionDetails_InfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_SessionDetails_Info() throws {
        try withZeroInitializedCStruct(type: _tagEOS_SessionDetails_Info.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.SessionId)
            XCTAssertNil(cstruct.HostAddress)
            XCTAssertEqual(cstruct.NumOpenPublicConnections, .zero)
            XCTAssertNil(cstruct.Settings)
            let swiftObject = try SwiftEOS_SessionDetails_Info(sdkObject: cstruct) }
    }
}
