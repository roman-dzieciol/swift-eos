import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionModification_SetJoinInProgressAllowedTests: XCTestCase {
    public func testEOS_SessionModification_SetJoinInProgressAllowed_Null() throws {
        TestGlobals.reset()
        __on_EOS_SessionModification_SetJoinInProgressAllowed = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.bAllowJoinInProgress, .zero)
            TestGlobals.sdkReceived.append("EOS_SessionModification_SetJoinInProgressAllowed")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_SessionModification_Actor = SwiftEOS_SessionModification_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SetJoinInProgressAllowed(bAllowJoinInProgress: false)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_SessionModification_SetJoinInProgressAllowed"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
