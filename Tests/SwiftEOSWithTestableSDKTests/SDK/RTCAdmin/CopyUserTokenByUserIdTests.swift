import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAdmin_CopyUserTokenByUserIdTests: XCTestCase {
    public func testEOS_RTCAdmin_CopyUserTokenByUserId_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_RTCAdmin_CopyUserTokenByUserId = { Handle, Options, OutUserToken in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_RTCADMIN_COPYUSERTOKENBYUSERID_API_LATEST)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertEqual(Options!.pointee.QueryId, .zero)
                XCTAssertNil(OutUserToken)
                TestGlobals.current.sdkReceived.append("EOS_RTCAdmin_CopyUserTokenByUserId")
                return .zero
            }
            defer { __on_EOS_RTCAdmin_CopyUserTokenByUserId = nil }
            
            // Given Actor
            let object: SwiftEOS_RTCAdmin_Actor = SwiftEOS_RTCAdmin_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_RTCAdmin_UserToken? = try object.CopyUserTokenByUserId(
                TargetUserId: nil,
                QueryId: .zero
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_RTCAdmin_CopyUserTokenByUserId"])
            XCTAssertNil(result)
        }
    }
}
