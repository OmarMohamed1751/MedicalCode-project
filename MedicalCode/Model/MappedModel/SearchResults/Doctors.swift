//
//  Data.swift
//
//  Created by Omar on 1/9/19
//  Copyright (c) . All rights reserved.
//

import Foundation
import ObjectMapper

public final class Doctors: Mappable{

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let clinicNameE = "ClinicNameE"
    static let docotrTitleA = "DocotrTitleA"
    static let discountEndDate = "DiscountEndDate"
    static let serviceProviderTypeId = "ServiceProviderTypeId"
    static let doctorDescriptionE = "DoctorDescriptionE"
    static let doctorImageUrl = "DoctorImageUrl"
    static let featured = "Featured"
    static let clinicId = "ClinicId"
    static let currency = "Currency"
    static let noOfViews = "NoOfViews"
    static let academicDegreeId = "AcademicDegreeId"
    static let addressA = "AddressA"
    static let noOfReviews = "NoOfReviews"
    static let isFavorite = "IsFavorite"
    static let clinicNameA = "ClinicNameA"
    static let currencyA = "CurrencyA"
    static let reviewScore = "ReviewScore"
    static let doctorFullNameE = "DoctorFullNameE"
    static let bookingTypeId = "BookingTypeId"
    static let waitingTime = "WaitingTime"
    static let doctorTitleE = "DoctorTitleE"
    static let gender = "Gender"
    static let longitude = "Longitude"
    static let cityId = "CityId"
    static let rank = "Rank"
    static let feesAfterDiscount = "FeesAfterDiscount"
    static let discountStartDate = "DiscountStartDate"
    static let fees = "Fees"
    static let doctorDescriptionA = "DoctorDescriptionA"
    static let doctorId = "DoctorId"
    static let doctorFullNameA = "DoctorFullNameA"
    static let subspecialityList = "SubspecialityList"
    static let latitude = "Latitude"
    static let addressE = "AddressE"
    static let specializationId = "SpecializationId"
    static let regionId = "RegionId"
  }

  // MARK: Properties
  public var clinicNameE: String?
  public var docotrTitleA: String?
  public var discountEndDate: String?
  public var serviceProviderTypeId: Int?
  public var doctorDescriptionE: String?
  public var doctorImageUrl: String?
  public var featured: Bool? = false
  public var clinicId: Int?
  public var currency: String?
  public var noOfViews: Int?
  public var academicDegreeId: Int?
  public var addressA: String?
  public var noOfReviews: Int?
  public var isFavorite: Bool? = false
  public var clinicNameA: String?
  public var currencyA: String?
  public var reviewScore: Int?
  public var doctorFullNameE: String?
  public var bookingTypeId: Int?
  public var waitingTime: Int?
  public var doctorTitleE: String?
  public var gender: Int?
  public var longitude: Float?
  public var cityId: Int?
  public var rank: Bool? = false
  public var feesAfterDiscount: Int?
  public var discountStartDate: String?
  public var fees: Int?
  public var doctorDescriptionA: String?
  public var doctorId: Int?
  public var doctorFullNameA: String?
  public var subspecialityList: [SubspecialityList]?
  public var latitude: Float?
  public var addressE: String?
  public var specializationId: Int?
  public var regionId: Int?

  // MARK: ObjectMapper Initializers
  /// Map a JSON object to this class using ObjectMapper.
  ///
  /// - parameter map: A mapping from ObjectMapper.
  public required init?(map: Map){

  }

  /// Map a JSON object to this class using ObjectMapper.
  ///
  /// - parameter map: A mapping from ObjectMapper.
  public func mapping(map: Map) {
    clinicNameE <- map[SerializationKeys.clinicNameE]
    docotrTitleA <- map[SerializationKeys.docotrTitleA]
    discountEndDate <- map[SerializationKeys.discountEndDate]
    serviceProviderTypeId <- map[SerializationKeys.serviceProviderTypeId]
    doctorDescriptionE <- map[SerializationKeys.doctorDescriptionE]
    doctorImageUrl <- map[SerializationKeys.doctorImageUrl]
    featured <- map[SerializationKeys.featured]
    clinicId <- map[SerializationKeys.clinicId]
    currency <- map[SerializationKeys.currency]
    noOfViews <- map[SerializationKeys.noOfViews]
    academicDegreeId <- map[SerializationKeys.academicDegreeId]
    addressA <- map[SerializationKeys.addressA]
    noOfReviews <- map[SerializationKeys.noOfReviews]
    isFavorite <- map[SerializationKeys.isFavorite]
    clinicNameA <- map[SerializationKeys.clinicNameA]
    currencyA <- map[SerializationKeys.currencyA]
    reviewScore <- map[SerializationKeys.reviewScore]
    doctorFullNameE <- map[SerializationKeys.doctorFullNameE]
    bookingTypeId <- map[SerializationKeys.bookingTypeId]
    waitingTime <- map[SerializationKeys.waitingTime]
    doctorTitleE <- map[SerializationKeys.doctorTitleE]
    gender <- map[SerializationKeys.gender]
    longitude <- map[SerializationKeys.longitude]
    cityId <- map[SerializationKeys.cityId]
    rank <- map[SerializationKeys.rank]
    feesAfterDiscount <- map[SerializationKeys.feesAfterDiscount]
    discountStartDate <- map[SerializationKeys.discountStartDate]
    fees <- map[SerializationKeys.fees]
    doctorDescriptionA <- map[SerializationKeys.doctorDescriptionA]
    doctorId <- map[SerializationKeys.doctorId]
    doctorFullNameA <- map[SerializationKeys.doctorFullNameA]
    subspecialityList <- map[SerializationKeys.subspecialityList]
    latitude <- map[SerializationKeys.latitude]
    addressE <- map[SerializationKeys.addressE]
    specializationId <- map[SerializationKeys.specializationId]
    regionId <- map[SerializationKeys.regionId]
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = clinicNameE { dictionary[SerializationKeys.clinicNameE] = value }
    if let value = docotrTitleA { dictionary[SerializationKeys.docotrTitleA] = value }
    if let value = discountEndDate { dictionary[SerializationKeys.discountEndDate] = value }
    if let value = serviceProviderTypeId { dictionary[SerializationKeys.serviceProviderTypeId] = value }
    if let value = doctorDescriptionE { dictionary[SerializationKeys.doctorDescriptionE] = value }
    if let value = doctorImageUrl { dictionary[SerializationKeys.doctorImageUrl] = value }
    dictionary[SerializationKeys.featured] = featured
    if let value = clinicId { dictionary[SerializationKeys.clinicId] = value }
    if let value = currency { dictionary[SerializationKeys.currency] = value }
    if let value = noOfViews { dictionary[SerializationKeys.noOfViews] = value }
    if let value = academicDegreeId { dictionary[SerializationKeys.academicDegreeId] = value }
    if let value = addressA { dictionary[SerializationKeys.addressA] = value }
    if let value = noOfReviews { dictionary[SerializationKeys.noOfReviews] = value }
    dictionary[SerializationKeys.isFavorite] = isFavorite
    if let value = clinicNameA { dictionary[SerializationKeys.clinicNameA] = value }
    if let value = currencyA { dictionary[SerializationKeys.currencyA] = value }
    if let value = reviewScore { dictionary[SerializationKeys.reviewScore] = value }
    if let value = doctorFullNameE { dictionary[SerializationKeys.doctorFullNameE] = value }
    if let value = bookingTypeId { dictionary[SerializationKeys.bookingTypeId] = value }
    if let value = waitingTime { dictionary[SerializationKeys.waitingTime] = value }
    if let value = doctorTitleE { dictionary[SerializationKeys.doctorTitleE] = value }
    if let value = gender { dictionary[SerializationKeys.gender] = value }
    if let value = longitude { dictionary[SerializationKeys.longitude] = value }
    if let value = cityId { dictionary[SerializationKeys.cityId] = value }
    dictionary[SerializationKeys.rank] = rank
    if let value = feesAfterDiscount { dictionary[SerializationKeys.feesAfterDiscount] = value }
    if let value = discountStartDate { dictionary[SerializationKeys.discountStartDate] = value }
    if let value = fees { dictionary[SerializationKeys.fees] = value }
    if let value = doctorDescriptionA { dictionary[SerializationKeys.doctorDescriptionA] = value }
    if let value = doctorId { dictionary[SerializationKeys.doctorId] = value }
    if let value = doctorFullNameA { dictionary[SerializationKeys.doctorFullNameA] = value }
    if let value = subspecialityList { dictionary[SerializationKeys.subspecialityList] = value.map { $0.dictionaryRepresentation() } }
    if let value = latitude { dictionary[SerializationKeys.latitude] = value }
    if let value = addressE { dictionary[SerializationKeys.addressE] = value }
    if let value = specializationId { dictionary[SerializationKeys.specializationId] = value }
    if let value = regionId { dictionary[SerializationKeys.regionId] = value }
    return dictionary
  }

  // MARK: NSCoding Protocol
  required public init(coder aDecoder: NSCoder) {
    self.clinicNameE = aDecoder.decodeObject(forKey: SerializationKeys.clinicNameE) as? String
    self.docotrTitleA = aDecoder.decodeObject(forKey: SerializationKeys.docotrTitleA) as? String
    self.discountEndDate = aDecoder.decodeObject(forKey: SerializationKeys.discountEndDate) as? String
    self.serviceProviderTypeId = aDecoder.decodeObject(forKey: SerializationKeys.serviceProviderTypeId) as? Int
    self.doctorDescriptionE = aDecoder.decodeObject(forKey: SerializationKeys.doctorDescriptionE) as? String
    self.doctorImageUrl = aDecoder.decodeObject(forKey: SerializationKeys.doctorImageUrl) as? String
    self.featured = aDecoder.decodeBool(forKey: SerializationKeys.featured)
    self.clinicId = aDecoder.decodeObject(forKey: SerializationKeys.clinicId) as? Int
    self.currency = aDecoder.decodeObject(forKey: SerializationKeys.currency) as? String
    self.noOfViews = aDecoder.decodeObject(forKey: SerializationKeys.noOfViews) as? Int
    self.academicDegreeId = aDecoder.decodeObject(forKey: SerializationKeys.academicDegreeId) as? Int
    self.addressA = aDecoder.decodeObject(forKey: SerializationKeys.addressA) as? String
    self.noOfReviews = aDecoder.decodeObject(forKey: SerializationKeys.noOfReviews) as? Int
    self.isFavorite = aDecoder.decodeBool(forKey: SerializationKeys.isFavorite)
    self.clinicNameA = aDecoder.decodeObject(forKey: SerializationKeys.clinicNameA) as? String
    self.currencyA = aDecoder.decodeObject(forKey: SerializationKeys.currencyA) as? String
    self.reviewScore = aDecoder.decodeObject(forKey: SerializationKeys.reviewScore) as? Int
    self.doctorFullNameE = aDecoder.decodeObject(forKey: SerializationKeys.doctorFullNameE) as? String
    self.bookingTypeId = aDecoder.decodeObject(forKey: SerializationKeys.bookingTypeId) as? Int
    self.waitingTime = aDecoder.decodeObject(forKey: SerializationKeys.waitingTime) as? Int
    self.doctorTitleE = aDecoder.decodeObject(forKey: SerializationKeys.doctorTitleE) as? String
    self.gender = aDecoder.decodeObject(forKey: SerializationKeys.gender) as? Int
    self.longitude = aDecoder.decodeObject(forKey: SerializationKeys.longitude) as? Float
    self.cityId = aDecoder.decodeObject(forKey: SerializationKeys.cityId) as? Int
    self.rank = aDecoder.decodeBool(forKey: SerializationKeys.rank)
    self.feesAfterDiscount = aDecoder.decodeObject(forKey: SerializationKeys.feesAfterDiscount) as? Int
    self.discountStartDate = aDecoder.decodeObject(forKey: SerializationKeys.discountStartDate) as? String
    self.fees = aDecoder.decodeObject(forKey: SerializationKeys.fees) as? Int
    self.doctorDescriptionA = aDecoder.decodeObject(forKey: SerializationKeys.doctorDescriptionA) as? String
    self.doctorId = aDecoder.decodeObject(forKey: SerializationKeys.doctorId) as? Int
    self.doctorFullNameA = aDecoder.decodeObject(forKey: SerializationKeys.doctorFullNameA) as? String
    self.subspecialityList = aDecoder.decodeObject(forKey: SerializationKeys.subspecialityList) as? [SubspecialityList]
    self.latitude = aDecoder.decodeObject(forKey: SerializationKeys.latitude) as? Float
    self.addressE = aDecoder.decodeObject(forKey: SerializationKeys.addressE) as? String
    self.specializationId = aDecoder.decodeObject(forKey: SerializationKeys.specializationId) as? Int
    self.regionId = aDecoder.decodeObject(forKey: SerializationKeys.regionId) as? Int
  }

  public func encode(with aCoder: NSCoder) {
    aCoder.encode(clinicNameE, forKey: SerializationKeys.clinicNameE)
    aCoder.encode(docotrTitleA, forKey: SerializationKeys.docotrTitleA)
    aCoder.encode(discountEndDate, forKey: SerializationKeys.discountEndDate)
    aCoder.encode(serviceProviderTypeId, forKey: SerializationKeys.serviceProviderTypeId)
    aCoder.encode(doctorDescriptionE, forKey: SerializationKeys.doctorDescriptionE)
    aCoder.encode(doctorImageUrl, forKey: SerializationKeys.doctorImageUrl)
    aCoder.encode(featured, forKey: SerializationKeys.featured)
    aCoder.encode(clinicId, forKey: SerializationKeys.clinicId)
    aCoder.encode(currency, forKey: SerializationKeys.currency)
    aCoder.encode(noOfViews, forKey: SerializationKeys.noOfViews)
    aCoder.encode(academicDegreeId, forKey: SerializationKeys.academicDegreeId)
    aCoder.encode(addressA, forKey: SerializationKeys.addressA)
    aCoder.encode(noOfReviews, forKey: SerializationKeys.noOfReviews)
    aCoder.encode(isFavorite, forKey: SerializationKeys.isFavorite)
    aCoder.encode(clinicNameA, forKey: SerializationKeys.clinicNameA)
    aCoder.encode(currencyA, forKey: SerializationKeys.currencyA)
    aCoder.encode(reviewScore, forKey: SerializationKeys.reviewScore)
    aCoder.encode(doctorFullNameE, forKey: SerializationKeys.doctorFullNameE)
    aCoder.encode(bookingTypeId, forKey: SerializationKeys.bookingTypeId)
    aCoder.encode(waitingTime, forKey: SerializationKeys.waitingTime)
    aCoder.encode(doctorTitleE, forKey: SerializationKeys.doctorTitleE)
    aCoder.encode(gender, forKey: SerializationKeys.gender)
    aCoder.encode(longitude, forKey: SerializationKeys.longitude)
    aCoder.encode(cityId, forKey: SerializationKeys.cityId)
    aCoder.encode(rank, forKey: SerializationKeys.rank)
    aCoder.encode(feesAfterDiscount, forKey: SerializationKeys.feesAfterDiscount)
    aCoder.encode(discountStartDate, forKey: SerializationKeys.discountStartDate)
    aCoder.encode(fees, forKey: SerializationKeys.fees)
    aCoder.encode(doctorDescriptionA, forKey: SerializationKeys.doctorDescriptionA)
    aCoder.encode(doctorId, forKey: SerializationKeys.doctorId)
    aCoder.encode(doctorFullNameA, forKey: SerializationKeys.doctorFullNameA)
    aCoder.encode(subspecialityList, forKey: SerializationKeys.subspecialityList)
    aCoder.encode(latitude, forKey: SerializationKeys.latitude)
    aCoder.encode(addressE, forKey: SerializationKeys.addressE)
    aCoder.encode(specializationId, forKey: SerializationKeys.specializationId)
    aCoder.encode(regionId, forKey: SerializationKeys.regionId)
  }

}
