import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_ActiveSession_CopyInfoTests: XCTestCase {
    public func testEOS_ActiveSession_CopyInfo_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_ActiveSession_Release = { ActiveSessionHandle in
                GTest.current.sdkReceived.append("EOS_ActiveSession_Release")
                XCTAssertNil(ActiveSessionHandle)
            }
            
            // Given implementation for SDK function
            __on_EOS_ActiveSession_CopyInfo = { Handle, Options, OutActiveSessionInfo in
                GTest.current.sdkReceived.append("EOS_ActiveSession_CopyInfo")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ACTIVESESSION_COPYINFO_API_LATEST)
                XCTAssertNotNil(OutActiveSessionInfo)
                return .zero
            }
            defer { __on_EOS_ActiveSession_CopyInfo = nil }
            
            // Given Actor
            let object: SwiftEOS_ActiveSession_Actor = SwiftEOS_ActiveSession_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyInfo()) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_ActiveSession_CopyInfo"])
        }
        
        // Then
        __on_EOS_ActiveSession_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_ActiveSession_CopyInfo", "EOS_ActiveSession_Release"])
    }
}
