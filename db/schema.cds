using {API_BUSINESS_PARTNER as bupa} from '../srv/external/API_BUSINESS_PARTNER';

entity Suppliers as projection on bupa.A_BusinessPartner {
    key BusinessPartner          as ID,
        BusinessPartnerFullName  as fullName,
        BusinessPartnerIsBlocked as isBlocked,
}

namespace rangerschedule;

using {
    cuid,
    managed
} from '@sap/cds/common';

entity Rooms {
    key ID       : Integer;
        name     : String(200);
        seats    : Integer;
        lectures : Association to many Lectures
                       on lectures.room = $self;
}

entity Courses {
    key ID       : String(5);
        name     : String(200);
        descr    : String;
        ects     : Integer;
        lectures : Association to many Lectures
                       on lectures.course = $self;
}

entity Professors {
    key ID        : Integer;
        firstname : String(100);
        lastname  : String(100);
        title     : String(10);
        lectures  : Association to many Lectures
                        on lectures.prof = $self;
}

entity Lectures : cuid {
    starttime      : DateTime             @mandatory;
    endtime        : DateTime             @mandatory;
    course         : Association to Courses;
    prof           : Association to Professors;
    room           : Association to Rooms @mandatory;
    virtual allday : Boolean;
}
