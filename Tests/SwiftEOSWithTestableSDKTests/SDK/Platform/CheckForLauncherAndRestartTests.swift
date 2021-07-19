import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_CheckForLauncherAndRestartTests: XCTestCase {
    public func testEOS_Platform_CheckForLauncherAndRestart_Null() throws {
        TestGlobals.reset()
        __on_EOS_Platform_CheckForLauncherAndRestart = { Handle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            TestGlobals.sdkReceived.append("EOS_Platform_CheckForLauncherAndRestart")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.CheckForLauncherAndRestart()
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Platform_CheckForLauncherAndRestart"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
