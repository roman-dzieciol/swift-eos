import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_ActiveSession_GetRegisteredPlayerCountTests: XCTestCase {
    public func testEOS_ActiveSession_GetRegisteredPlayerCount_Null() throws {
        TestGlobals.reset()
        __on_EOS_ActiveSession_GetRegisteredPlayerCount = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            TestGlobals.sdkReceived.append("EOS_ActiveSession_GetRegisteredPlayerCount")
            return .zero }
        let object: SwiftEOS_ActiveSession_Actor = SwiftEOS_ActiveSession_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Int = try object.GetRegisteredPlayerCount()
        XCTAssertEqual(result, .zero)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_ActiveSession_GetRegisteredPlayerCount"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
