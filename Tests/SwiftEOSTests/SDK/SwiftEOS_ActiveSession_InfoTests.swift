import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_ActiveSession_InfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_ActiveSession_Info() throws {
        try withZeroInitializedCStruct(type: _tagEOS_ActiveSession_Info.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.SessionName)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.State, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.SessionDetails)
            let swiftObject = try SwiftEOS_ActiveSession_Info(sdkObject: cstruct) }
    }
}
