import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sessions_IsUserInSessionTests: XCTestCase {
    public func testEOS_Sessions_IsUserInSession_Null() throws {
        TestGlobals.reset()
        __on_EOS_Sessions_IsUserInSession = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.SessionName)
            XCTAssertNil(Options!.pointee.TargetUserId)
            TestGlobals.sdkReceived.append("EOS_Sessions_IsUserInSession")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.IsUserInSession(
            SessionName: nil,
            TargetUserId: nil
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Sessions_IsUserInSession"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
