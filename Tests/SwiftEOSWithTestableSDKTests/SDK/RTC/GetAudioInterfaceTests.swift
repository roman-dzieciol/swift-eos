import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTC_GetAudioInterfaceTests: XCTestCase {
    public func testEOS_RTC_GetAudioInterface_Null() throws {
        TestGlobals.reset()
        __on_EOS_RTC_GetAudioInterface = { Handle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            TestGlobals.sdkReceived.append("EOS_RTC_GetAudioInterface")
            return OpaquePointer(bitPattern: Int(1))! }
        let object: SwiftEOS_RTC_Actor = SwiftEOS_RTC_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: EOS_HRTCAudio = object.GetAudioInterface()
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_RTC_GetAudioInterface"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
