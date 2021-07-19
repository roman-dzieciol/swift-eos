import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionSearch_SetSessionIdTests: XCTestCase {
    public func testEOS_SessionSearch_SetSessionId_Null() throws {
        TestGlobals.reset()
        __on_EOS_SessionSearch_SetSessionId = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.SessionId)
            TestGlobals.sdkReceived.append("EOS_SessionSearch_SetSessionId")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_SessionSearch_Actor = SwiftEOS_SessionSearch_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SetSessionId(SessionId: nil)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_SessionSearch_SetSessionId"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
