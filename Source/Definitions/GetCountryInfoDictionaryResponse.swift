import Foundation
import ObjectMapper
open class GetCountryInfoDictionaryResponse: Mappable {
    /*
    Internal identifier of a country
    */
    open var `id`: String?
    /*
    Canonical URI of a country
    */
    open var `uri`: String?
    /*
    Country calling code defined by ITU-T recommendations E.123 and E.164, see Calling Codes
    */
    open var `callingCode`: String?
    /*
    Emergency calling feature availability/emergency address requirement indicator
    */
    open var `emergencyCalling`: Bool?
    /*
    Country code according to the ISO standard, see ISO 3166
    */
    open var `isoCode`: String?
    /*
    Official name of a country
    */
    open var `name`: String?
    /*
    Determines whether phone numbers are available for a country
    */
    open var `numberSelling`: Bool?
    /*
    Specifies whether login with the phone numbers of this country is enabled or not
    */
    open var `loginAllowed`: Bool?
    /*
    Indicates whether signup/billing is allowed for a country
    */
    open var `signupAllowed`: Bool?
    /*
    Specifies if free phone line for softphone is available for a country or not
    */
    open var `freeSoftphoneLine`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(id: String? = nil, uri: String? = nil, callingCode: String? = nil, emergencyCalling: Bool? = nil, isoCode: String? = nil, name: String? = nil, numberSelling: Bool? = nil, loginAllowed: Bool? = nil, signupAllowed: Bool? = nil, freeSoftphoneLine: Bool? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.callingCode = `callingCode`
        self.emergencyCalling = `emergencyCalling`
        self.isoCode = `isoCode`
        self.name = `name`
        self.numberSelling = `numberSelling`
        self.loginAllowed = `loginAllowed`
        self.signupAllowed = `signupAllowed`
        self.freeSoftphoneLine = `freeSoftphoneLine`
    }
    open func mapping(map: Map) {
        `id` <- (map["id"], StringTransform())
        `uri` <- map["uri"]
        `callingCode` <- map["callingCode"]
        `emergencyCalling` <- map["emergencyCalling"]
        `isoCode` <- map["isoCode"]
        `name` <- map["name"]
        `numberSelling` <- map["numberSelling"]
        `loginAllowed` <- map["loginAllowed"]
        `signupAllowed` <- map["signupAllowed"]
        `freeSoftphoneLine` <- map["freeSoftphoneLine"]
    }
}
