import Foundation
import ObjectMapper
import Alamofire
open class ClientInfoPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "client-info"
        }
    }
    open func `sipProvision`() -> SipProvisionPath {
        return SipProvisionPath(parent: self)
    }
    open func `banners`() -> BannersPath {
        return BannersPath(parent: self)
    }
    open func `customData`(_ _id: String) -> CustomDataPath {
        return CustomDataPath(parent: self, _id: _id)
    }
    open func `specialNumberRule`() -> SpecialNumberRulePath {
        return SpecialNumberRulePath(parent: self)
    }
}
