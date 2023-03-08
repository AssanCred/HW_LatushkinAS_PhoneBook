//
//  DataStore.swift
//  HW_LatushkinAS_PhoneBook
//
//  Created by Артём Латушкин on 04.03.2023.
//

final class DataStore {
    
static let shared = DataStore()
    
    let names = [
        "Савелий",
        "Петр",
        "Аристотель",
        "Володя",
        "Николай",
        "Артем",
        "Павел",
        "Леонид"
    ]
    let surnames = [
        "Журавлёв",
        "Николаев",
        "Крылов",
        "Максимов",
        "Сидоров",
        "Осипов",
        "Власов",
        "Гаврилов"
    ]
    let phone = [
        "980323452",
        "345256345",
        "343543643",
        "345457567",
        "3434647343",
        "468476784",
        "4554676574",
        "435476586786"
    ]
    let email = [
        "dsdsfdfsd@gmail.com",
        "dsfewhyth@gmail.com",
        "daufdrre@gg.ru",
        "dfththyhs@rrr.rt",
        "dfdsvffv@gtrr.rt",
        "kkvfdvdd@fdfgfd.rt",
        "dsfynncsd@trcs.rn",
        "edhcd@tbd.rt"
    ]
    private init() {}
}
