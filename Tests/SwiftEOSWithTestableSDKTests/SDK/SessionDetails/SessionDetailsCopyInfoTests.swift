import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionDetails_CopyInfoTests: XCTestCase {
    public func testEOS_SessionDetails_CopyInfo_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_SessionDetails_Release = { SessionHandle in
                XCTAssertNil(SessionHandle)
                TestGlobals.current.sdkReceived.append("EOS_SessionDetails_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_SessionDetails_CopyInfo = { Handle, Options, OutSessionInfo in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONDETAILS_COPYINFO_API_LATEST)
                XCTAssertNotNil(OutSessionInfo)
                TestGlobals.current.sdkReceived.append("EOS_SessionDetails_CopyInfo")
                return .zero
            }
            defer { __on_EOS_SessionDetails_CopyInfo = nil }
            
            // Given Actor
            let object: SwiftEOS_SessionDetails_Actor = SwiftEOS_SessionDetails_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_SessionDetails_Info? = try object.CopyInfo()
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_SessionDetails_CopyInfo"])
            XCTAssertNil(result)
        }
        
        // Then
        __on_EOS_SessionDetails_Release = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_SessionDetails_CopyInfo", "EOS_SessionDetails_Release"])
    }
}
