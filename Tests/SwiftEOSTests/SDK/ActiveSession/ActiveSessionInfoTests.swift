import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_ActiveSession_InfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_ActiveSession_Info() throws {
        try withZeroInitializedCStruct(type: _tagEOS_ActiveSession_Info.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ACTIVESESSION_INFO_API_LATEST)
            XCTAssertNil(cstruct.SessionName)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.State, .zero)
            XCTAssertNil(cstruct.SessionDetails)
            let swiftObject = try XCTUnwrap(try SwiftEOS_ActiveSession_Info(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ACTIVESESSION_INFO_API_LATEST)
            XCTAssertNil(swiftObject.SessionName)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertEqual(swiftObject.State, .zero)
            XCTAssertNil(swiftObject.SessionDetails) }
    }
}
