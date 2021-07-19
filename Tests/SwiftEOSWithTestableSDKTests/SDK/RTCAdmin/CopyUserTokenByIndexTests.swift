import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAdmin_CopyUserTokenByIndexTests: XCTestCase {
    public func testEOS_RTCAdmin_CopyUserTokenByIndex_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_RTCAdmin_CopyUserTokenByIndex = { Handle, Options, OutUserToken in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_RTCADMIN_COPYUSERTOKENBYINDEX_API_LATEST)
                XCTAssertEqual(Options!.pointee.UserTokenIndex, .zero)
                XCTAssertEqual(Options!.pointee.QueryId, .zero)
                XCTAssertNil(OutUserToken)
                TestGlobals.current.sdkReceived.append("EOS_RTCAdmin_CopyUserTokenByIndex")
                return .zero
            }
            defer { __on_EOS_RTCAdmin_CopyUserTokenByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_RTCAdmin_Actor = SwiftEOS_RTCAdmin_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_RTCAdmin_UserToken? = try object.CopyUserTokenByIndex(
                UserTokenIndex: .zero,
                QueryId: .zero
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_RTCAdmin_CopyUserTokenByIndex"])
            XCTAssertNil(result)
        }
    }
}
