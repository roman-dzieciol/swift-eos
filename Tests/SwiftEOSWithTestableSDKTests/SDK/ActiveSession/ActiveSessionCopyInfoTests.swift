import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_ActiveSession_CopyInfoTests: XCTestCase {
    public func testEOS_ActiveSession_CopyInfo_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_ActiveSession_Release = { ActiveSessionHandle in
                XCTAssertNil(ActiveSessionHandle)
                TestGlobals.current.sdkReceived.append("EOS_ActiveSession_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_ActiveSession_CopyInfo = { Handle, Options, OutActiveSessionInfo in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ACTIVESESSION_COPYINFO_API_LATEST)
                XCTAssertNotNil(OutActiveSessionInfo)
                TestGlobals.current.sdkReceived.append("EOS_ActiveSession_CopyInfo")
                return .zero
            }
            defer { __on_EOS_ActiveSession_CopyInfo = nil }
            
            // Given Actor
            let object: SwiftEOS_ActiveSession_Actor = SwiftEOS_ActiveSession_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_ActiveSession_Info? = try object.CopyInfo()
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_ActiveSession_CopyInfo", "EOS_ActiveSession_Release"])
            XCTAssertNil(result)
        }
        
        // Then
        __on_EOS_ActiveSession_Release = nil
    }
}
