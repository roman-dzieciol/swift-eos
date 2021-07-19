import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Friends_GetStatusTests: XCTestCase {
    public func testEOS_Friends_GetStatus_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Friends_GetStatus = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.TargetUserId)
                TestGlobals.current.sdkReceived.append("EOS_Friends_GetStatus")
                return .zero
            }
            defer { __on_EOS_Friends_GetStatus = nil }
            
            // Given Actor
            let object: SwiftEOS_Friends_Actor = SwiftEOS_Friends_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: EOS_EFriendsStatus = try object.GetStatus(
                LocalUserId: nil,
                TargetUserId: nil
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Friends_GetStatus"])
            XCTAssertEqual(result, .zero)
        }
    }
}
