import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_GetLobbyInterfaceTests: XCTestCase {
    public func testEOS_Platform_GetLobbyInterface_Null() throws {
        TestGlobals.reset()
        __on_EOS_Platform_GetLobbyInterface = { Handle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            TestGlobals.sdkReceived.append("EOS_Platform_GetLobbyInterface")
            return OpaquePointer(bitPattern: Int(1))! }
        let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Lobby_Actor? = object.GetLobbyInterface()
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Platform_GetLobbyInterface"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
