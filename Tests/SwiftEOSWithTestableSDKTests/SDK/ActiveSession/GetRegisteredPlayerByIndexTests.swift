import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_ActiveSession_GetRegisteredPlayerByIndexTests: XCTestCase {
    public func testEOS_ActiveSession_GetRegisteredPlayerByIndex_Null() throws {
        TestGlobals.reset()
        __on_EOS_ActiveSession_GetRegisteredPlayerByIndex = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.PlayerIndex, .zero)
            TestGlobals.sdkReceived.append("EOS_ActiveSession_GetRegisteredPlayerByIndex")
            return OpaquePointer(bitPattern: Int(1))! }
        let object: SwiftEOS_ActiveSession_Actor = SwiftEOS_ActiveSession_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: EOS_ProductUserId = try object.GetRegisteredPlayerByIndex(PlayerIndex: .zero)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_ActiveSession_GetRegisteredPlayerByIndex"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
