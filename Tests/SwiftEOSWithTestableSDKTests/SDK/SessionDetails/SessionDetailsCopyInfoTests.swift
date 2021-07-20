import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionDetails_CopyInfoTests: XCTestCase {
    public func testEOS_SessionDetails_CopyInfo_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_SessionDetails_Release = { SessionHandle in
                XCTAssertNil(SessionHandle)
                GTest.current.sdkReceived.append("EOS_SessionDetails_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_SessionDetails_CopyInfo = { Handle, Options, OutSessionInfo in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONDETAILS_COPYINFO_API_LATEST)
                XCTAssertNotNil(OutSessionInfo)
                GTest.current.sdkReceived.append("EOS_SessionDetails_CopyInfo")
                return .zero
            }
            defer { __on_EOS_SessionDetails_CopyInfo = nil }
            
            // Given Actor
            let object: SwiftEOS_SessionDetails_Actor = SwiftEOS_SessionDetails_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyInfo()) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_SessionDetails_CopyInfo"])
        }
        
        // Then
        __on_EOS_SessionDetails_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_SessionDetails_CopyInfo", "EOS_SessionDetails_Release"])
    }
}
