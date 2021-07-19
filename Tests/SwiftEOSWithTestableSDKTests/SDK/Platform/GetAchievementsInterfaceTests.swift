import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_GetAchievementsInterfaceTests: XCTestCase {
    public func testEOS_Platform_GetAchievementsInterface_Null() throws {
        TestGlobals.reset()
        __on_EOS_Platform_GetAchievementsInterface = { Handle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            TestGlobals.sdkReceived.append("EOS_Platform_GetAchievementsInterface")
            return OpaquePointer(bitPattern: Int(1))! }
        let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Achievements_Actor? = object.GetAchievementsInterface()
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Platform_GetAchievementsInterface"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
