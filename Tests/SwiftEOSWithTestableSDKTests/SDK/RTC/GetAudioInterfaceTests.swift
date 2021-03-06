import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_RTC_GetAudioInterfaceTests: XCTestCase {
    public func testEOS_RTC_GetAudioInterface_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_RTC_GetAudioInterface = { Handle in
                GTest.current.sdkReceived.append("EOS_RTC_GetAudioInterface")
                XCTAssertNil(Handle)
                return nil
            }
            defer { __on_EOS_RTC_GetAudioInterface = nil }
            
            // Given Actor
            let object: SwiftEOS_RTC_Actor = SwiftEOS_RTC_Actor(Handle: nil)
            
            // When SDK function is called
            let result: EOS_HRTCAudio? = object.GetAudioInterface()
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_RTC_GetAudioInterface"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_RTC_GetAudioInterface"])
    }
}
