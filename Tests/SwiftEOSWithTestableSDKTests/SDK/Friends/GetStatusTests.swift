import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Friends_GetStatusTests: XCTestCase {
    public func testEOS_Friends_GetStatus_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Friends_GetStatus = { Handle, Options in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_FRIENDS_GETSTATUS_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.TargetUserId)
                GTest.current.sdkReceived.append("EOS_Friends_GetStatus")
                return .zero
            }
            defer { __on_EOS_Friends_GetStatus = nil }
            
            // Given Actor
            let object: SwiftEOS_Friends_Actor = SwiftEOS_Friends_Actor(Handle: nil)
            
            // When SDK function is called
            let result: EOS_EFriendsStatus = try object.GetStatus(
                LocalUserId: nil,
                TargetUserId: nil
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Friends_GetStatus"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Friends_GetStatus"])
    }
}
