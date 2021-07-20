import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_ActiveSession_CopyInfoTests: XCTestCase {
    public func testEOS_ActiveSession_CopyInfo_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_ActiveSession_Release = { ActiveSessionHandle in
                XCTAssertNil(ActiveSessionHandle)
                GTest.current.sdkReceived.append("EOS_ActiveSession_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_ActiveSession_CopyInfo = { Handle, Options, OutActiveSessionInfo in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ACTIVESESSION_COPYINFO_API_LATEST)
                XCTAssertNotNil(OutActiveSessionInfo)
                GTest.current.sdkReceived.append("EOS_ActiveSession_CopyInfo")
                return .zero
            }
            defer { __on_EOS_ActiveSession_CopyInfo = nil }
            
            // Given Actor
            let object: SwiftEOS_ActiveSession_Actor = SwiftEOS_ActiveSession_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_ActiveSession_Info? = try object.CopyInfo()
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_ActiveSession_CopyInfo"])
            XCTAssertNil(result)
        }
        
        // Then
        __on_EOS_ActiveSession_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_ActiveSession_CopyInfo", "EOS_ActiveSession_Release"])
    }
}
