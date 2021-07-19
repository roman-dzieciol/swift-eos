import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Presence_GetJoinInfoTests: XCTestCase {
    public func testEOS_Presence_GetJoinInfo_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Presence_GetJoinInfo = { Handle, Options, OutBuffer, InOutBufferLength in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertNil(OutBuffer)
                XCTAssertNil(InOutBufferLength)
                TestGlobals.current.sdkReceived.append("EOS_Presence_GetJoinInfo")
                return .zero
            }
            defer { __on_EOS_Presence_GetJoinInfo = nil }
            
            // Given Actor
            let object: SwiftEOS_Presence_Actor = SwiftEOS_Presence_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: String? = try object.GetJoinInfo(
                LocalUserId: nil,
                TargetUserId: nil
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Presence_GetJoinInfo"])
            XCTAssertNil(result)
        }
    }
}
