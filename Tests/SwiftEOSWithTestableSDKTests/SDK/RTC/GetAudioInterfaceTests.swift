import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTC_GetAudioInterfaceTests: XCTestCase {
    public func testEOS_RTC_GetAudioInterface_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_RTC_GetAudioInterface = { Handle in
                XCTAssertEqual(Handle, .nonZeroPointer)
                TestGlobals.current.sdkReceived.append("EOS_RTC_GetAudioInterface")
                return nil
            }
            defer { __on_EOS_RTC_GetAudioInterface = nil }
            
            // Given Actor
            let object: SwiftEOS_RTC_Actor = SwiftEOS_RTC_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: EOS_HRTCAudio? = object.GetAudioInterface()
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_RTC_GetAudioInterface"])
            XCTAssertNil(result)
        }
    }
}
