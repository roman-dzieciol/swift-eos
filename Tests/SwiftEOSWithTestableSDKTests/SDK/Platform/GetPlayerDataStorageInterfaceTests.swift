import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_GetPlayerDataStorageInterfaceTests: XCTestCase {
    public func testEOS_Platform_GetPlayerDataStorageInterface_Null() throws {
        TestGlobals.reset()
        __on_EOS_Platform_GetPlayerDataStorageInterface = { Handle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            TestGlobals.sdkReceived.append("EOS_Platform_GetPlayerDataStorageInterface")
            return OpaquePointer(bitPattern: Int(1))! }
        let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_PlayerDataStorage_Actor? = object.GetPlayerDataStorageInterface()
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Platform_GetPlayerDataStorageInterface"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
