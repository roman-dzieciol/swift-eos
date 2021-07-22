import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Friends_GetFriendAtIndexTests: XCTestCase {
    public func testEOS_Friends_GetFriendAtIndex_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Friends_GetFriendAtIndex = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_Friends_GetFriendAtIndex")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_FRIENDS_GETFRIENDATINDEX_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertEqual(Options!.pointee.Index, .zero)
                return nil
            }
            defer { __on_EOS_Friends_GetFriendAtIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Friends_Actor = SwiftEOS_Friends_Actor(Handle: nil)
            
            // When SDK function is called
            let result: EOS_EpicAccountId? = try object.GetFriendAtIndex(
                LocalUserId: nil,
                Index: .zero
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Friends_GetFriendAtIndex"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Friends_GetFriendAtIndex"])
    }
}
